#############################################################################
# Makefile for building: coindesigner
# Generated by qmake (2.01a) (Qt 4.8.2) on: dt. de gen. 21 09:37:28 2014
# Project:  coindesigner.pro
# Template: app
# Command: /usr/bin/qmake coindesigner.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_WEBKIT -DCDS_VERSION="2.0" -DUSE_VOLEON -DSIMVOLEON_DLL -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4 -Isrc -Isrc/ivfix -Isrc/qhulllib -I/usr/include -Itmp -Itmp -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lSimVoleon -lsimage -L/usr/lib -L/usr/share/qt4/lib -lSoQt4 -lQtOpenGL -lXmu -lXi -lCoin -lGL -lXext -lSM -lICE -lX11 -ldl -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = tmp/

####### Files

SOURCES       = src/main.cpp \
		src/mainwindow.cpp \
		src/mainwindow2.cpp \
		src/cds_util.cpp \
		src/cds_viewers.cpp \
		src/cds_parser.cpp \
		src/cds_scanner.cpp \
		src/cds_globals.cpp \
		src/3dsLoader.cpp \
		src/settingsDialog.cpp \
		src/SoStream.cpp \
		src/src_editor.cpp \
		src/cppexport_options.cpp \
		src/mfield_editor.cpp \
		src/ivfix_options.cpp \
		src/qslim_options.cpp \
		src/tetgen_options.cpp \
		src/ivfix/IfBuilder.cpp \
		src/ivfix/IfFlattener.cpp \
		src/ivfix/IfReplacer.cpp \
		src/ivfix/IfSorter.cpp \
		src/ivfix/IfCollector.cpp \
		src/ivfix/IfHasher.cpp \
		src/ivfix/IfReporter.cpp \
		src/ivfix/IfStripper.cpp \
		src/ivfix/IfCondenser.cpp \
		src/ivfix/IfHolder.cpp \
		src/ivfix/IfShape.cpp \
		src/ivfix/IfTypes.cpp \
		src/ivfix/IfFixer.cpp \
		src/ivfix/IfMerger.cpp \
		src/ivfix/IfShapeList.cpp \
		src/ivfix/IfWeeder.cpp \
		src/qhulllib/qh_geom.cpp \
		src/qhulllib/qh_io.cpp \
		src/qhulllib/qh_poly.cpp \
		src/qhulllib/qh_stat.cpp \
		src/qhulllib/qh_geom2.cpp \
		src/qhulllib/qh_mem.cpp \
		src/qhulllib/qh_poly2.cpp \
		src/qhulllib/qh_user.cpp \
		src/qhulllib/qhulllib.cpp \
		src/qhulllib/qh_global.cpp \
		src/qhulllib/qh_merge.cpp \
		src/qhulllib/qhull_interface.cpp \
		src/qhulllib/qh_qset.cpp \
		src/qhulllib/qhull.cpp tmp/moc_mainwindow.cpp \
		tmp/moc_src_editor.cpp \
		tmp/moc_mfield_editor.cpp \
		tmp/moc_qslim_options.cpp \
		tmp/moc_cds_viewers.cpp \
		tmp/moc_cppexport_options.cpp \
		tmp/moc_ivfix_options.cpp \
		tmp/moc_settingsDialog.cpp \
		tmp/moc_tetgen_options.cpp \
		tmp/qrc_icons.cpp \
		tmp/qrc_demos.cpp
OBJECTS       = tmp/main.o \
		tmp/mainwindow.o \
		tmp/mainwindow2.o \
		tmp/cds_util.o \
		tmp/cds_viewers.o \
		tmp/cds_parser.o \
		tmp/cds_scanner.o \
		tmp/cds_globals.o \
		tmp/3dsLoader.o \
		tmp/settingsDialog.o \
		tmp/SoStream.o \
		tmp/src_editor.o \
		tmp/cppexport_options.o \
		tmp/mfield_editor.o \
		tmp/ivfix_options.o \
		tmp/qslim_options.o \
		tmp/tetgen_options.o \
		tmp/IfBuilder.o \
		tmp/IfFlattener.o \
		tmp/IfReplacer.o \
		tmp/IfSorter.o \
		tmp/IfCollector.o \
		tmp/IfHasher.o \
		tmp/IfReporter.o \
		tmp/IfStripper.o \
		tmp/IfCondenser.o \
		tmp/IfHolder.o \
		tmp/IfShape.o \
		tmp/IfTypes.o \
		tmp/IfFixer.o \
		tmp/IfMerger.o \
		tmp/IfShapeList.o \
		tmp/IfWeeder.o \
		tmp/qh_geom.o \
		tmp/qh_io.o \
		tmp/qh_poly.o \
		tmp/qh_stat.o \
		tmp/qh_geom2.o \
		tmp/qh_mem.o \
		tmp/qh_poly2.o \
		tmp/qh_user.o \
		tmp/qhulllib.o \
		tmp/qh_global.o \
		tmp/qh_merge.o \
		tmp/qhull_interface.o \
		tmp/qh_qset.o \
		tmp/qhull.o \
		tmp/moc_mainwindow.o \
		tmp/moc_src_editor.o \
		tmp/moc_mfield_editor.o \
		tmp/moc_qslim_options.o \
		tmp/moc_cds_viewers.o \
		tmp/moc_cppexport_options.o \
		tmp/moc_ivfix_options.o \
		tmp/moc_settingsDialog.o \
		tmp/moc_tetgen_options.o \
		tmp/qrc_icons.o \
		tmp/qrc_demos.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/modules/qt_phonon.pri \
		/usr/share/qt4/mkspecs/modules/qt_webkit_version.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		coindesigner.pro
QMAKE_TARGET  = coindesigner
DESTDIR       = 
TARGET        = coindesigner

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all:  $(TARGET)

$(TARGET): tmp/ui_mainwindow.h tmp/ui_cds_editor.h tmp/ui_src_view.h tmp/ui_mfield_editor.h tmp/ui_cppexport_options.h tmp/ui_ivfix_options.h tmp/ui_qslim_options.h tmp/ui_tetgen_options.h tmp/ui_settingsDialog.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

qmake:  FORCE
	@$(QMAKE) coindesigner.pro

dist: 
	@$(CHK_DIR_EXISTS) tmp/coindesigner1.0.0 || $(MKDIR) tmp/coindesigner1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) tmp/coindesigner1.0.0/ && $(COPY_FILE) --parents src/mainwindow.h src/cds_util.h src/cds_globals.h src/3dsLoader.h src/src_editor.h src/mfield_editor.h src/qslim_options.h src/cds_viewers.h src/cppexport_options.h src/ivfix_options.h src/settingsDialog.h src/tetgen_options.h tmp/coindesigner1.0.0/ && $(COPY_FILE) --parents images/icons.qrc demos/demos.qrc tmp/coindesigner1.0.0/ && $(COPY_FILE) --parents src/main.cpp src/mainwindow.cpp src/mainwindow2.cpp src/cds_util.cpp src/cds_viewers.cpp src/cds_parser.cpp src/cds_scanner.cpp src/cds_globals.cpp src/3dsLoader.cpp src/settingsDialog.cpp src/SoStream.cpp src/src_editor.cpp src/cppexport_options.cpp src/mfield_editor.cpp src/ivfix_options.cpp src/qslim_options.cpp src/tetgen_options.cpp src/ivfix/IfBuilder.cpp src/ivfix/IfFlattener.cpp src/ivfix/IfReplacer.cpp src/ivfix/IfSorter.cpp src/ivfix/IfCollector.cpp src/ivfix/IfHasher.cpp src/ivfix/IfReporter.cpp src/ivfix/IfStripper.cpp src/ivfix/IfCondenser.cpp src/ivfix/IfHolder.cpp src/ivfix/IfShape.cpp src/ivfix/IfTypes.cpp src/ivfix/IfFixer.cpp src/ivfix/IfMerger.cpp src/ivfix/IfShapeList.cpp src/ivfix/IfWeeder.cpp src/qhulllib/qh_geom.cpp src/qhulllib/qh_io.cpp src/qhulllib/qh_poly.cpp src/qhulllib/qh_stat.cpp src/qhulllib/qh_geom2.cpp src/qhulllib/qh_mem.cpp src/qhulllib/qh_poly2.cpp src/qhulllib/qh_user.cpp src/qhulllib/qhulllib.cpp src/qhulllib/qh_global.cpp src/qhulllib/qh_merge.cpp src/qhulllib/qhull_interface.cpp src/qhulllib/qh_qset.cpp src/qhulllib/qhull.cpp tmp/coindesigner1.0.0/ && $(COPY_FILE) --parents ui/mainwindow.ui ui/cds_editor.ui ui/src_view.ui ui/mfield_editor.ui ui/cppexport_options.ui ui/ivfix_options.ui ui/qslim_options.ui ui/tetgen_options.ui ui/settingsDialog.ui tmp/coindesigner1.0.0/ && $(COPY_FILE) --parents translations/coindesigner_es.ts tmp/coindesigner1.0.0/ && (cd `dirname tmp/coindesigner1.0.0` && $(TAR) coindesigner1.0.0.tar coindesigner1.0.0 && $(COMPRESS) coindesigner1.0.0.tar) && $(MOVE) `dirname tmp/coindesigner1.0.0`/coindesigner1.0.0.tar.gz . && $(DEL_FILE) -r tmp/coindesigner1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: tmp/moc_mainwindow.cpp tmp/moc_src_editor.cpp tmp/moc_mfield_editor.cpp tmp/moc_qslim_options.cpp tmp/moc_cds_viewers.cpp tmp/moc_cppexport_options.cpp tmp/moc_ivfix_options.cpp tmp/moc_settingsDialog.cpp tmp/moc_tetgen_options.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) tmp/moc_mainwindow.cpp tmp/moc_src_editor.cpp tmp/moc_mfield_editor.cpp tmp/moc_qslim_options.cpp tmp/moc_cds_viewers.cpp tmp/moc_cppexport_options.cpp tmp/moc_ivfix_options.cpp tmp/moc_settingsDialog.cpp tmp/moc_tetgen_options.cpp
tmp/moc_mainwindow.cpp: tmp/ui_mainwindow.h \
		src/cds_globals.h \
		src/mainwindow.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/mainwindow.h -o tmp/moc_mainwindow.cpp

tmp/moc_src_editor.cpp: tmp/ui_src_view.h \
		src/src_editor.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/src_editor.h -o tmp/moc_src_editor.cpp

tmp/moc_mfield_editor.cpp: tmp/ui_mfield_editor.h \
		src/mfield_editor.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/mfield_editor.h -o tmp/moc_mfield_editor.cpp

tmp/moc_qslim_options.cpp: tmp/ui_qslim_options.h \
		src/qslim_options.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/qslim_options.h -o tmp/moc_qslim_options.cpp

tmp/moc_cds_viewers.cpp: tmp/ui_cds_editor.h \
		src/cds_viewers.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/cds_viewers.h -o tmp/moc_cds_viewers.cpp

tmp/moc_cppexport_options.cpp: tmp/ui_cppexport_options.h \
		src/cppexport_options.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/cppexport_options.h -o tmp/moc_cppexport_options.cpp

tmp/moc_ivfix_options.cpp: tmp/ui_ivfix_options.h \
		src/ivfix_options.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/ivfix_options.h -o tmp/moc_ivfix_options.cpp

tmp/moc_settingsDialog.cpp: tmp/ui_settingsDialog.h \
		src/settingsDialog.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/settingsDialog.h -o tmp/moc_settingsDialog.cpp

tmp/moc_tetgen_options.cpp: tmp/ui_tetgen_options.h \
		src/tetgen_options.h
	/usr/bin/moc-qt4 $(DEFINES) $(INCPATH) src/tetgen_options.h -o tmp/moc_tetgen_options.cpp

compiler_rcc_make_all: tmp/qrc_icons.cpp tmp/qrc_demos.cpp
compiler_rcc_clean:
	-$(DEL_FILE) tmp/qrc_icons.cpp tmp/qrc_demos.cpp
tmp/qrc_icons.cpp: images/icons.qrc \
		images/svg/Anaglyph.png \
		images/svg/Measure.png \
		images/svg/Cocotte_en_papier.png \
		images/svg/Antialias_Icon.png \
		images/svg/coindesigner.png \
		images/svg/Icon_Mathematical_Plot.png \
		images/nodes/materialindex.png \
		images/nodes/manip.png \
		images/nodes/separator.png \
		images/nodes/bumpmap.png \
		images/nodes/basekit.png \
		images/nodes/realtimeglobalfield.png \
		images/nodes/callback.png \
		images/nodes/group.png \
		images/nodes/light.png \
		images/nodes/normalbinding.png \
		images/nodes/levelofdetail.png \
		images/nodes/packedcolor.png \
		images/nodes/normal.png \
		images/nodes/switch.png \
		images/nodes/units.png \
		images/nodes/camera.png \
		images/nodes/nodekit.png \
		images/nodes/file.png \
		images/nodes/info.png \
		images/nodes/selection.png \
		images/nodes/drawstyle.png \
		images/nodes/field.png \
		images/nodes/lightmodel.png \
		images/nodes/colorindex.png \
		images/nodes/materialbinding.png \
		images/nodes/polygonoffset.png \
		images/nodes/basecolor.png \
		images/nodes/component.png \
		images/nodes/font.png \
		images/nodes/complexity.png \
		images/nodes/shaderprogram.png \
		images/nodes/pickstyle.png \
		images/nodes/label.png \
		images/nodes/texture2.png \
		images/nodes/transformation.png \
		images/nodes/transparencytype.png \
		images/nodes/metric.png \
		images/nodes/appearance.png \
		images/nodes/texturecoordinate2.png \
		images/nodes/texture2transform.png \
		images/nodes/engine.png \
		images/nodes/environment.png \
		images/nodes/shapehints.png \
		images/nodes/shape.png \
		images/nodes/material.png \
		images/nodes/property.png \
		images/nodes/coordinate3.png \
		images/gui/colorize.png \
		images/gui/help.png \
		images/gui/exit.png \
		images/gui/up.png \
		images/gui/fileprint.png \
		images/gui/txt.png \
		images/gui/compfile.png \
		images/gui/filenew.png \
		images/gui/redo.png \
		images/gui/filesaveas.png \
		images/gui/previous.png \
		images/gui/down.png \
		images/gui/filequickprint.png \
		images/gui/reload.png \
		images/gui/next.png \
		images/gui/fileimport.png \
		images/gui/stop.png \
		images/gui/toggle_log.png \
		images/gui/rebuild.png \
		images/gui/gear.png \
		images/gui/attach.png \
		images/gui/filefind.png \
		images/gui/editshred.png \
		images/gui/fileopen.png \
		images/gui/print.png \
		images/gui/filesave.png \
		images/gui/editpaste.png \
		images/gui/xyz.png \
		images/gui/undo.png \
		images/gui/editdelete.png \
		images/gui/save_all.png \
		images/gui/editclear.png \
		images/gui/editcopy.png \
		images/gui/fileclose.png \
		images/gui/warehause.png \
		images/gui/bottom.png \
		images/gui/clock.png \
		images/gui/edit.png \
		images/gui/searchfind.png \
		images/gui/package_utilities.png \
		images/gui/gohome.png \
		images/gui/editcut.png \
		images/gui/launch.png \
		images/gui/edittrash.png \
		images/gui/top.png
	/usr/bin/rcc -name icons images/icons.qrc -o tmp/qrc_icons.cpp

tmp/qrc_demos.cpp: demos/demos.qrc \
		demos/helloCone.iv \
		demos/planetEarth.iv.gz \
		demos/mirror.iv \
		demos/engine.iv
	/usr/bin/rcc -name demos demos/demos.qrc -o tmp/qrc_demos.cpp

compiler_image_collection_make_all: tmp/qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) tmp/qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: tmp/ui_mainwindow.h tmp/ui_cds_editor.h tmp/ui_src_view.h tmp/ui_mfield_editor.h tmp/ui_cppexport_options.h tmp/ui_ivfix_options.h tmp/ui_qslim_options.h tmp/ui_tetgen_options.h tmp/ui_settingsDialog.h
compiler_uic_clean:
	-$(DEL_FILE) tmp/ui_mainwindow.h tmp/ui_cds_editor.h tmp/ui_src_view.h tmp/ui_mfield_editor.h tmp/ui_cppexport_options.h tmp/ui_ivfix_options.h tmp/ui_qslim_options.h tmp/ui_tetgen_options.h tmp/ui_settingsDialog.h
tmp/ui_mainwindow.h: ui/mainwindow.ui
	/usr/bin/uic-qt4 ui/mainwindow.ui -o tmp/ui_mainwindow.h

tmp/ui_cds_editor.h: ui/cds_editor.ui
	/usr/bin/uic-qt4 ui/cds_editor.ui -o tmp/ui_cds_editor.h

tmp/ui_src_view.h: ui/src_view.ui
	/usr/bin/uic-qt4 ui/src_view.ui -o tmp/ui_src_view.h

tmp/ui_mfield_editor.h: ui/mfield_editor.ui
	/usr/bin/uic-qt4 ui/mfield_editor.ui -o tmp/ui_mfield_editor.h

tmp/ui_cppexport_options.h: ui/cppexport_options.ui
	/usr/bin/uic-qt4 ui/cppexport_options.ui -o tmp/ui_cppexport_options.h

tmp/ui_ivfix_options.h: ui/ivfix_options.ui
	/usr/bin/uic-qt4 ui/ivfix_options.ui -o tmp/ui_ivfix_options.h

tmp/ui_qslim_options.h: ui/qslim_options.ui
	/usr/bin/uic-qt4 ui/qslim_options.ui -o tmp/ui_qslim_options.h

tmp/ui_tetgen_options.h: ui/tetgen_options.ui
	/usr/bin/uic-qt4 ui/tetgen_options.ui -o tmp/ui_tetgen_options.h

tmp/ui_settingsDialog.h: ui/settingsDialog.ui
	/usr/bin/uic-qt4 ui/settingsDialog.ui -o tmp/ui_settingsDialog.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean compiler_uic_clean 

####### Compile

tmp/main.o: src/main.cpp src/mainwindow.h \
		tmp/ui_mainwindow.h \
		src/cds_globals.h \
		src/settingsDialog.h \
		tmp/ui_settingsDialog.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/main.o src/main.cpp

tmp/mainwindow.o: src/mainwindow.cpp src/mainwindow.h \
		tmp/ui_mainwindow.h \
		src/cds_globals.h \
		src/cds_viewers.h \
		tmp/ui_cds_editor.h \
		src/cds_util.h \
		src/3dsLoader.h \
		src/src_editor.h \
		tmp/ui_src_view.h \
		src/mfield_editor.h \
		tmp/ui_mfield_editor.h \
		src/cppexport_options.h \
		tmp/ui_cppexport_options.h \
		src/ivfix_options.h \
		tmp/ui_ivfix_options.h \
		src/settingsDialog.h \
		tmp/ui_settingsDialog.h \
		src/qslim_options.h \
		tmp/ui_qslim_options.h \
		src/tetgen_options.h \
		tmp/ui_tetgen_options.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/mainwindow.o src/mainwindow.cpp

tmp/mainwindow2.o: src/mainwindow2.cpp src/mainwindow.h \
		tmp/ui_mainwindow.h \
		src/cds_globals.h \
		src/cds_viewers.h \
		tmp/ui_cds_editor.h \
		src/cds_util.h \
		src/3dsLoader.h \
		src/src_editor.h \
		tmp/ui_src_view.h \
		src/mfield_editor.h \
		tmp/ui_mfield_editor.h \
		src/cppexport_options.h \
		tmp/ui_cppexport_options.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/mainwindow2.o src/mainwindow2.cpp

tmp/cds_util.o: src/cds_util.cpp src/cds_util.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/cds_util.o src/cds_util.cpp

tmp/cds_viewers.o: src/cds_viewers.cpp src/cds_viewers.h \
		tmp/ui_cds_editor.h \
		src/mainwindow.h \
		tmp/ui_mainwindow.h \
		src/cds_globals.h \
		src/cds_util.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/cds_viewers.o src/cds_viewers.cpp

tmp/cds_parser.o: src/cds_parser.cpp src/cds_globals.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/cds_parser.o src/cds_parser.cpp

tmp/cds_scanner.o: src/cds_scanner.cpp src/cds_globals.h \
		src/cds_parser.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/cds_scanner.o src/cds_scanner.cpp

tmp/cds_globals.o: src/cds_globals.cpp src/cds_globals.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/cds_globals.o src/cds_globals.cpp

tmp/3dsLoader.o: src/3dsLoader.cpp src/SoStream.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/3dsLoader.o src/3dsLoader.cpp

tmp/settingsDialog.o: src/settingsDialog.cpp src/settingsDialog.h \
		tmp/ui_settingsDialog.h \
		src/cds_globals.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/settingsDialog.o src/settingsDialog.cpp

tmp/SoStream.o: src/SoStream.cpp src/SoStream.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/SoStream.o src/SoStream.cpp

tmp/src_editor.o: src/src_editor.cpp src/src_editor.h \
		tmp/ui_src_view.h \
		src/cds_util.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/src_editor.o src/src_editor.cpp

tmp/cppexport_options.o: src/cppexport_options.cpp src/cppexport_options.h \
		tmp/ui_cppexport_options.h \
		src/cds_util.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/cppexport_options.o src/cppexport_options.cpp

tmp/mfield_editor.o: src/mfield_editor.cpp src/mfield_editor.h \
		tmp/ui_mfield_editor.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/mfield_editor.o src/mfield_editor.cpp

tmp/ivfix_options.o: src/ivfix_options.cpp src/ivfix_options.h \
		tmp/ui_ivfix_options.h \
		src/cds_util.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/ivfix_options.o src/ivfix_options.cpp

tmp/qslim_options.o: src/qslim_options.cpp src/qslim_options.h \
		tmp/ui_qslim_options.h \
		src/cds_globals.h \
		src/cds_util.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qslim_options.o src/qslim_options.cpp

tmp/tetgen_options.o: src/tetgen_options.cpp src/tetgen_options.h \
		tmp/ui_tetgen_options.h \
		src/cds_globals.h \
		src/cds_util.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/tetgen_options.o src/tetgen_options.cpp

tmp/IfBuilder.o: src/ivfix/IfBuilder.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfBuilder.h \
		src/ivfix/IfShapeList.h \
		src/ivfix/IfCondenser.h \
		src/ivfix/IfFlattener.h \
		src/ivfix/IfHolder.h \
		src/ivfix/IfReporter.h \
		src/ivfix/IfShape.h \
		src/ivfix/IfStripper.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfBuilder.o src/ivfix/IfBuilder.cpp

tmp/IfFlattener.o: src/ivfix/IfFlattener.cpp src/ivfix/IfFlattener.h \
		src/ivfix/IfHolder.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfFlattener.o src/ivfix/IfFlattener.cpp

tmp/IfReplacer.o: src/ivfix/IfReplacer.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfReplacer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfReplacer.o src/ivfix/IfReplacer.cpp

tmp/IfSorter.o: src/ivfix/IfSorter.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfShape.h \
		src/ivfix/IfSorter.h \
		src/ivfix/IfShapeList.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfSorter.o src/ivfix/IfSorter.cpp

tmp/IfCollector.o: src/ivfix/IfCollector.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfCollector.h \
		src/ivfix/IfShape.h \
		src/ivfix/IfTypes.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfCollector.o src/ivfix/IfCollector.cpp

tmp/IfHasher.o: src/ivfix/IfHasher.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfHasher.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfHasher.o src/ivfix/IfHasher.cpp

tmp/IfReporter.o: src/ivfix/IfReporter.cpp src/ivfix/IfHolder.h \
		src/ivfix/IfReporter.h \
		src/ivfix/IfShape.h \
		src/ivfix/IfShapeList.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfReporter.o src/ivfix/IfReporter.cpp

tmp/IfStripper.o: src/ivfix/IfStripper.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfStripper.h \
		src/ivfix/IfHolder.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfStripper.o src/ivfix/IfStripper.cpp

tmp/IfCondenser.o: src/ivfix/IfCondenser.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfCondenser.h \
		src/ivfix/IfHasher.h \
		src/ivfix/IfHolder.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfCondenser.o src/ivfix/IfCondenser.cpp

tmp/IfHolder.o: src/ivfix/IfHolder.cpp src/ivfix/IfHolder.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfHolder.o src/ivfix/IfHolder.cpp

tmp/IfShape.o: src/ivfix/IfShape.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfShape.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfShape.o src/ivfix/IfShape.cpp

tmp/IfTypes.o: src/ivfix/IfTypes.cpp src/ivfix/IfTypes.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfTypes.o src/ivfix/IfTypes.cpp

tmp/IfFixer.o: src/ivfix/IfFixer.cpp src/ivfix/IfBuilder.h \
		src/ivfix/IfShapeList.h \
		src/ivfix/IfCollector.h \
		src/ivfix/IfFixer.h \
		src/ivfix/IfMerger.h \
		src/ivfix/IfReplacer.h \
		src/ivfix/IfReporter.h \
		src/ivfix/IfShape.h \
		src/ivfix/IfSorter.h \
		src/ivfix/IfWeeder.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfFixer.o src/ivfix/IfFixer.cpp

tmp/IfMerger.o: src/ivfix/IfMerger.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfShape.h \
		src/ivfix/IfMerger.h \
		src/ivfix/IfShapeList.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfMerger.o src/ivfix/IfMerger.cpp

tmp/IfShapeList.o: src/ivfix/IfShapeList.cpp src/ivfix/IfShape.h \
		src/ivfix/IfShapeList.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfShapeList.o src/ivfix/IfShapeList.cpp

tmp/IfWeeder.o: src/ivfix/IfWeeder.cpp src/ivfix/IfAssert.h \
		src/ivfix/IfShape.h \
		src/ivfix/IfTypes.h \
		src/ivfix/IfWeeder.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/IfWeeder.o src/ivfix/IfWeeder.cpp

tmp/qh_geom.o: src/qhulllib/qh_geom.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_geom.o src/qhulllib/qh_geom.cpp

tmp/qh_io.o: src/qhulllib/qh_io.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_io.o src/qhulllib/qh_io.cpp

tmp/qh_poly.o: src/qhulllib/qh_poly.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_poly.o src/qhulllib/qh_poly.cpp

tmp/qh_stat.o: src/qhulllib/qh_stat.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_stat.o src/qhulllib/qh_stat.cpp

tmp/qh_geom2.o: src/qhulllib/qh_geom2.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_geom2.o src/qhulllib/qh_geom2.cpp

tmp/qh_mem.o: src/qhulllib/qh_mem.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_mem.o src/qhulllib/qh_mem.cpp

tmp/qh_poly2.o: src/qhulllib/qh_poly2.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_poly2.o src/qhulllib/qh_poly2.cpp

tmp/qh_user.o: src/qhulllib/qh_user.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_user.o src/qhulllib/qh_user.cpp

tmp/qhulllib.o: src/qhulllib/qhulllib.cpp src/qhulllib/qhulllib.h \
		src/qhulllib/qinterface.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qhulllib.o src/qhulllib/qhulllib.cpp

tmp/qh_global.o: src/qhulllib/qh_global.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_global.o src/qhulllib/qh_global.cpp

tmp/qh_merge.o: src/qhulllib/qh_merge.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_merge.o src/qhulllib/qh_merge.cpp

tmp/qhull_interface.o: src/qhulllib/qhull_interface.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qhull_interface.o src/qhulllib/qhull_interface.cpp

tmp/qh_qset.o: src/qhulllib/qh_qset.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_mem.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qh_qset.o src/qhulllib/qh_qset.cpp

tmp/qhull.o: src/qhulllib/qhull.cpp src/qhulllib/qinterface.h \
		src/qhulllib/qhull_a.h \
		src/qhulllib/qhull.h \
		src/qhulllib/qh_user.h \
		src/qhulllib/qh_mem.h \
		src/qhulllib/qh_qset.h \
		src/qhulllib/qh_geom.h \
		src/qhulllib/qh_merge.h \
		src/qhulllib/qh_poly.h \
		src/qhulllib/qh_io.h \
		src/qhulllib/qh_stat.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qhull.o src/qhulllib/qhull.cpp

tmp/moc_mainwindow.o: tmp/moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_mainwindow.o tmp/moc_mainwindow.cpp

tmp/moc_src_editor.o: tmp/moc_src_editor.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_src_editor.o tmp/moc_src_editor.cpp

tmp/moc_mfield_editor.o: tmp/moc_mfield_editor.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_mfield_editor.o tmp/moc_mfield_editor.cpp

tmp/moc_qslim_options.o: tmp/moc_qslim_options.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_qslim_options.o tmp/moc_qslim_options.cpp

tmp/moc_cds_viewers.o: tmp/moc_cds_viewers.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_cds_viewers.o tmp/moc_cds_viewers.cpp

tmp/moc_cppexport_options.o: tmp/moc_cppexport_options.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_cppexport_options.o tmp/moc_cppexport_options.cpp

tmp/moc_ivfix_options.o: tmp/moc_ivfix_options.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_ivfix_options.o tmp/moc_ivfix_options.cpp

tmp/moc_settingsDialog.o: tmp/moc_settingsDialog.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_settingsDialog.o tmp/moc_settingsDialog.cpp

tmp/moc_tetgen_options.o: tmp/moc_tetgen_options.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/moc_tetgen_options.o tmp/moc_tetgen_options.cpp

tmp/qrc_icons.o: tmp/qrc_icons.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qrc_icons.o tmp/qrc_icons.cpp

tmp/qrc_demos.o: tmp/qrc_demos.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tmp/qrc_demos.o tmp/qrc_demos.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

