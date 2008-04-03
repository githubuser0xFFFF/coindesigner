/*
    This file is part of coindesigner.

    coindesigner is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    coindesigner is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with coindesigner; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

*/

#include <cds_viewers.h>
#include <Inventor/details/SoDetails.h>
#include "mainwindow.h"
#include "cds_util.h"

/*! Callback del evento raypick, que muestra informaci�n sobre el punto apuntado por el rat�n.*/
void pick_cb (void *ud, SoEventCallback * n)
{
  //Pasa el evento al editor llamante
  assert(ud != NULL);
  CdsExaminerEditor *cdsviewer = (CdsExaminerEditor *)ud;
  cdsviewer->pickCallback(n);
}

  
/*! Callback del evento raypick, que muestra informaci�n sobre el punto apuntado por el rat�n.*/
template <class SOTYPEVIEWER>
void CdsEditorTemplate<SOTYPEVIEWER>::pickCallback (SoEventCallback * n)
{
  const SoMouseButtonEvent * mbe = (SoMouseButtonEvent *)n->getEvent();
  int i;

  //Numero de facetas seleccionadas para parchear
  static int numFacetasPatch = 0;

 //Identificamos la ventana, el visor y la barra de status
 QStatusBar *statusBar = this->statusBar();

 qDebug("%p->%s(%p) -> state=%d button=%d\n", this, __FUNCTION__, n, mbe->getState(),  mbe->getButton() ) ;

  //Miramos si queremos alguna opci�n de picado
 if (this->pickAction == Ui.actionNone)
	 return;

 //Comprobamos que se ha pulsado el boton izquierdo del rat�n
 if (mbe->getState() == SoButtonEvent::DOWN && mbe->getButton() == SoMouseButtonEvent::BUTTON1 ) 
 {

    //Aseguramos que mark_sep no est� colgado de myRoot, para evitar picar sobre la marca
    while (myRoot->findChild(mark_sep) > -1) 
       myRoot->removeChild(mark_sep);

    SoRayPickAction rp(this->getViewportRegion());
    rp.setPoint(mbe->getPosition());
    rp.apply(this->getSceneManager()->getSceneGraph());

	//Miramos si hemos pinchado sobre algun elemento
    SoPickedPoint * point = rp.getPickedPoint();
    if (point == NULL) 
	{
		statusBar->showMessage(tr("Nothing there."));

		//Reseteamos el contador de facetas
		numFacetasPatch=0;

		return;
    }
    n->setHandled();

    //Extraemos las coordenadas del objeto apuntado
    SbVec3f v = point->getPoint();

    //Actualizamos la posici�n de la marca
    mark_coord->point.setValue(v);

    //Aseguramos que mark_sep est� colgado de myRoot
 	if (this->pickAction == Ui.actionInfo && myRoot->findChild(mark_sep) < 0) 
       myRoot->addChild(mark_sep);

    //Imprimimos las coordenadas del punto 
    qDebug("\nPoint XYZ= %f %f %f\n", v[0], v[1], v[2]);

    //Imprimimos las coordenadas del punto en la barra del mensaje
	QString M, S;
	M.sprintf("XYZ= %f %f %f", v[0], v[1], v[2]);

    //Path del objeto apuntado
    SoPath *path = point->getPath()->copy(3,0);
    path->ref();

    //SoNode del objeto apuntado
    SoNode *nodo = path->getTail();

	//Buscamos el nodo seleccionado en el arbol de mainwindow
	global_mw->getItemFromPath(path);

    //Mostramos el path, salvo el ultimo nodo
    for (i=0; i < path->getLength()-1; i++)
    {
      const char *nombre_tipo = path->getNode(i)->getTypeId().getName(); 
      qDebug("%s[%d]-> ", nombre_tipo, path->getIndex(i+1) );
    }

    //Averiguamos el tipo del nodo
    SoType tipo = nodo->getTypeId();
    const char *nombre_tipo = tipo.getName();  

	//Mostramos el tipo en barra de status
	M += QString(" <> ") + QString(nombre_tipo);

	//Averiguamos el nombre del nodo
	const char *nombre_nodo = nodo->getName().getString();

	//Mostramos el nombre en barra de status
	if (nombre_nodo && strlen(nombre_nodo) > 0)
		M += QString(" <> ") + tr("Nombre=") + QString(nombre_nodo);

    qDebug("%s; Name=%s\n", nombre_tipo, nombre_nodo);

    //Detalle del objeto apuntado
    const SoDetail *pickDetail = point->getDetail();
    if (pickDetail != NULL)
    {

      //Si hemos pinchado sobre una faceta, mostramos su información
      if (pickDetail->getTypeId() == SoFaceDetail::getClassTypeId()) 
      {
        SoFaceDetail *facDetail = (SoFaceDetail *) pickDetail;
        //Mostramos el indice de la faceta
        qDebug("Face index=%d; Vertex list=",facDetail->getFaceIndex());
		M.append(S.sprintf(" <> Face index=%d <> Vertex =",facDetail->getFaceIndex()));

        //Mostramos información sobre todos sus vertices
        for (i=0; i < facDetail->getNumPoints(); i++)
        {
          const SoPointDetail *pointDetail = facDetail->getPoint(i);
          qDebug(" %d", pointDetail->getCoordinateIndex());
		  M.append(S.sprintf(" %d", pointDetail->getCoordinateIndex()));
        }//for

        qDebug("\n");

        SoMFVec3f coords;
        SoNode *nodeCoord = buscaCoordenadas (path, coords);

        if (nodeCoord)
        {
          const char *nombre_tipo = nodeCoord->getTypeId().getName();  
          const char *nombre_nodo = nodeCoord->getName().getString();
		  qDebug("%s coordinate node; Name=%s\n", nombre_tipo, nombre_nodo);

          //Mostramos informacion sobre todos sus vertices
          for (i=0; i < facDetail->getNumPoints(); i++)
          {
            int idx = facDetail->getPoint(i)->getCoordinateIndex();
			qDebug("%d = ", idx);
            coords[idx].print(stdout);
			qDebug("\n");
            
          }//for

        }// if (nodeCoord)

/* TODO: Activar esto

	    //Si se ha solicitado eliminar la faceta
        if (cdsviewer->pickAction == CdsViewer::DeleteId)
		   ifs_remove_facet(path, facDetail->getFaceIndex() );

		//Si se ha solicitado dar la vuelta a la faceta
        else if (cdsviewer->pickAction == CdsViewer::FlipId)
		   ifs_flip_facet(path, facDetail->getFaceIndex() );

		else if (cdsviewer->pickAction == CdsViewer::PatchId)
		{
			//Facetas seleccionadas para el patch
			static int facetasPatch[3];

			//Salvamos la facetas seleccionada
			facetasPatch[numFacetasPatch++] = facDetail->getFaceIndex();

			//Mostramos las facetas seleccionadas
			M.sprintf("Parcheando facetas:");
			for (int i=0; i<numFacetasPatch; i++)
				M.append(S.sprintf(" %d", facetasPatch[i]));
			statusBar->message(M);
			statusBar->show();

			//Si tenemos 3, intentamos cerrar un hueco
			if (numFacetasPatch == 3)
			{
				numFacetasPatch=0;
				ifs_patch_hole(path, facetasPatch[0], facetasPatch[1], facetasPatch[2]);
			}


		}
//*/
	  }
      else

      //Si hemos pinchado sobre un punto
      if (pickDetail->getTypeId() == SoPointDetail::getClassTypeId()) 
      {
        SoPointDetail *pointDetail = (SoPointDetail *) pickDetail;

        //Mostramos el indice del punto
        int idx = pointDetail->getCoordinateIndex();
        qDebug("Point index=%d\n", idx);

		//Mostramos informacion en barra de status
		M.append(S.sprintf(" <> Point index=%d", idx));
        SoMFVec3f coords;
        SoNode *nodeCoord = buscaCoordenadas (path, coords);
        if (nodeCoord)
        {
          const char *nombre_tipo = nodeCoord->getTypeId().getName();  
          const char *nombre_nodo = nodeCoord->getName().getString();
          qDebug("%s node; Name=%s; Center=", nombre_tipo, nombre_nodo);

		  //Mostramos informacion en barra de status
		  M.append(S.sprintf(" of %s node name=%s", nombre_tipo, nombre_nodo));

		  centroid(coords).print(stdout);
          fprintf(stdout, "\n");

          qDebug("Vertex %d = ", idx);
          coords[idx].print(stdout);
          qDebug("\n");


        }// if (nodeCoord)
      }
      else

      //Si hemos pinchado sobre un texto
      if (pickDetail->getTypeId() == SoTextDetail::getClassTypeId()) 
      {
        SoTextDetail *textDetail = (SoTextDetail *) pickDetail;

        //Mostramos el indice del texto
        qDebug("Char index=[%d][%d]\n",textDetail->getStringIndex(),
                                               textDetail->getCharacterIndex());
	    //Mostramos informacion en barra de status
		M.append(S.sprintf(" <> Char index=[%d][%d]",textDetail->getStringIndex(),
                                               textDetail->getCharacterIndex()));



      }
      else

      //Si hemos pinchado sobre un cubo
      if (pickDetail->getTypeId() == SoCubeDetail::getClassTypeId()) 
      {
        char *parts[] = {"FRONT", "BACK", "LEFT", "RIGHT", "TOP", "BOTTOM"};
        SoCubeDetail *cubeDetail = (SoCubeDetail *) pickDetail;

        //Mostramos la cara pinchada
        int part = cubeDetail->getPart();
        qDebug("Face index = %d (%s)\n", part, parts[part]);

		//Mostramos informacion en barra de status
		M.append(S.sprintf(" <> Face index = %d (%s)", part, parts[part]));

      }
      else

      {
         //qDebug(CdsViewer::tr("Tipo de nodo desconocido\n"));
      }

    }//if (pickDetail != NULL)

	//Mostramos el mensaje en la ventana del viewer
 	if (this->pickAction == Ui.actionInfo)
	   statusBar->showMessage(M);

    //Liberamos el path
    path->unref();

  }//if (mbe->getButton() == SoMouseButtonEvent::BUTTON2 &&

} //void pickAction (SoEventCallback * n)

