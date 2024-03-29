#-------------------------------------------------
#
# Project created by QtCreator 2019-03-28T12:27:46
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = RobotControl
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++14

SOURCES += \
        main.cpp \
        mainwindow.cpp \
        logwidget.cpp \
        robot/structures.cpp \
        robot/hseclient.cpp \
        robot/gcodeinterpreter.cpp \
        gcode/gcodereader.cpp

HEADERS += \
        mainwindow.h \
        logwidget.h \
        robot/structures.h \
        robot/hseclient.h \
        robot/gcodeinterpreter.h \
        gcode/gcodestructures.h \
        gcode/gcodereader.h \
    log.h

FORMS += \
        mainwindow.ui \
        logwidget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# Translations
TRANSLATIONS += languages/RobotControl_en.ts \
                languages/RobotControl_fr.ts
