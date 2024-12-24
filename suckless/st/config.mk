# st version
VERSION = 0.9.2

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib

PKG_CONFIG = pkg-config

# includes and libs
INCS = -I$(X11INC) \
       `$(PKG_CONFIG) --cflags imlib2` \
       `$(PKG_CONFIG) --cflags fontconfig` \
       `$(PKG_CONFIG) --cflags freetype2`
LIBS = -L$(X11LIB) -lm -lrt -lX11 -lutil -lXft -lXrender \
       `$(PKG_CONFIG) --libs imlib2` \
       `$(PKG_CONFIG) --libs zlib` \
       `$(PKG_CONFIG) --libs fontconfig` \
       `$(PKG_CONFIG) --libs freetype2` \

# flags
CFLAGS = -O3 -pipe -march=native -mtune=native -fno-semantic-interposition -fomit-frame-pointer
CPPFLAGS = -O3 -pipe -march=native -mtune=native -fno-semantic-interposition -fomit-frame-pointer

STCPPFLAGS = -DVERSION=\"$(VERSION)\" -D_XOPEN_SOURCE=600 -O3 -pipe -march=native -mtune=native -fno-semantic-interposition -fomit-frame-pointer
STCFLAGS = $(INCS) $(STCPPFLAGS) $(CPPFLAGS) $(CFLAGS) -O3 -pipe -march=native -mtune=native -fno-semantic-interposition -fomit-frame-pointer
STLDFLAGS = $(LIBS) $(LDFLAGS)

# compiler and linker
CC = gcc
