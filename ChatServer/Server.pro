QT       += core gui network sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17  cmdline

# Вы можете сделать так, чтобы ваш код не компилировался, если он использует устаревшие API.
# Для этого откомментируйте следующую строку.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000 # отключает все API, устаревшие до версии Qt 6.0.0

SOURCES += \
    Data.cpp \
    Network.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    Data.h \
    Network.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
