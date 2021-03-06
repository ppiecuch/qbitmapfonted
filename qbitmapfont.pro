QT += core gui widgets
qtHaveModule(printsupport): QT += printsupport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qbitmapfont
TEMPLATE = app

DESTDIR = build-$$[QMAKE_SPEC]
CONFIG(debug, debug|release) {
    DIR = $$DESTDIR/$${TARGET}.deb
} else {
    DIR = $$DESTDIR/$${TARGET}.rel
}
OBJECTS_DIR = $$DIR
MOC_DIR = $$DIR
RCC_DIR = $$DIR
UI_DIR = $$DIR


include("src/src.pri")

HEADERS += src/pixelview.h
SOURCES += src/pixelview.cpp src/main.cpp
RESOURCES += res/images.qrc

ICON = res/icon.icns
