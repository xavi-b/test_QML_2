TEMPLATE = app

QT += quick qml
SOURCES += main.cpp
RESOURCES += \
    draganddrop.qrc

target.path = $$[QT_INSTALL_EXAMPLES]/quick/draganddrop
INSTALLS += target

HEADERS += \
    Image1.h
