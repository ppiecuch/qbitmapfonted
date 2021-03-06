CONFIG += console
CONFIG -= app_bundle

QT -= gui
QT += widgets
qtHaveModule(printsupport): QT += printsupport

SOURCES     = src/maincli.cpp

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
