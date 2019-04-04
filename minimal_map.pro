TEMPLATE = app

QT += location core qml widgets gui

SOURCES += main.cpp \
    mainwindow.cpp

RESOURCES += qml.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/location/minimal_map
INSTALLS += target

CONFIG += c++11

DISTFILES +=

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui
