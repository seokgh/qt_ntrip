#-------------------------------------------------
#
# Project created by QtCreator 2017-01-04T13:07:24
#
#-------------------------------------------------

QT       += core gui network serialport network websockets webchannel webenginewidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = NTRIP
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    ntrip.cpp \
    venus8.cpp \
    rtcm.cpp

HEADERS  += mainwindow.h \
    ntrip.h \
    venus8.h \
    rtcm.h \
    ./nmea/nmea.h

FORMS    += mainwindow.ui

CONFIG(debug,debug|release){
    DESTDIR = ../build/$$TARGET/debug
    MOC_DIR = ../build/$$TARGET/debug
    OBJECTS_DIR = ../build/$$TARGET/debug

    target.path = ../app/$$TARGET/debug
    INSTALLS += target

    #unix:INCLUDEPATH += $$(HOME)/SDK/CMU_LIBS/3rdLibs/NmeaLib
    #unix:LIBS += -L$$(HOME)/SDK/CMU_LIBS/3rdLibs/NmeaLib -lNmeaLib_Debug

    #unix:INCLUDEPATH += $$(HOME)/SDK/CMU_LIBS/QStaticLibs/QGMapInterface
    #unix:INCLUDEPATH += $$(HOME)/SDK/CMU_LIBS/QStaticLibs/QJSInterface
    #unix:LIBS += -L$$(HOME)/SDK/CMU_LIBS/QStaticLibs/QGMapInterface -lQGMapInterface_Debug
    #unix:LIBS += -L$$(HOME)/SDK/CMU_LIBS/QStaticLibs/QJSInterface -lQJSInterface_Debug
}else{
    DESTDIR = ../build/$$TARGET/release
    MOC_DIR = ../build/$$TARGET/release
    OBJECTS_DIR = ../build/$$TARGET/release

    target.path = ../app/$$TARGET/release
    INSTALLS += target

    #unix:INCLUDEPATH += $$(HOME)/SDK/CMU_LIBS/3rdLibs/NmeaLib
    #unix:LIBS += -L$$(HOME)/SDK/CMU_LIBS/3rdLibs/NmeaLib -lNmeaLib_Release

    #unix:INCLUDEPATH += $$(HOME)/SDK/CMU_LIBS/QStaticLibs/QGMapInterface
    #unix:INCLUDEPATH += $$(HOME)/SDK/CMU_LIBS/QStaticLibs/QJSInterface
    #unix:LIBS += -L$$(HOME)/SDK/CMU_LIBS/QStaticLibs/QGMapInterface -lQGMapInterface_Release
    #unix:LIBS += -L$$(HOME)/SDK/CMU_LIBS/QStaticLibs/QJSInterface -lQJSInterface_Release
}


