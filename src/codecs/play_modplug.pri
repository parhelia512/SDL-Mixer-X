LIBS    += -lmodplug
DEFINES += MODPLUG_STATIC

HEADERS += \
    $$PWD/dynamic_modplug.h \
    $$PWD/music_modplug.h

SOURCES += \
    $$PWD/dynamic_modplug.c \
    $$PWD/music_modplug.c

