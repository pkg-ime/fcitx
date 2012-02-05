# Define variables to be used in rules.

CFLAGS += $(CPPFLAGS)
CXXFLAGS += $(CPPFLAGS)

DEB_BUILD_MULTIARCH=$(shell dpkg-architecture -qDEB_BUILD_MULTIARCH)

GTK2_LIBDIR=$(shell if [ -f /usr/lib/pkgconfig/gtk+-2.0.pc ]; \
    then echo "usr\/lib"; \
    else echo "usr\/lib\/$(DEB_BUILD_MULTIARCH)";  fi)

GTK2_MA=$(shell if [ -f /usr/lib/pkgconfig/gtk+-2.0.pc ]; \
    then echo 0; \
    else echo 1;  fi)

GTK3_LIBDIR=$(shell if [ -f /usr/lib/pkgconfig/gtk+-3.0.pc ]; \
    then echo "usr\/lib"; \
    else echo "usr\/lib\/$(DEB_BUILD_MULTIARCH)";  fi)

GTK3_MA=$(shell if [ -f /usr/lib/pkgconfig/gtk+-3.0.pc ]; \
    then echo 0; \
    else echo 1;  fi)

QT4_LIBDIR=$(shell if [ -f /usr/lib/pkgconfig/gtk+-3.0.pc ]; \
    then echo "usr\/lib"; \
    else echo "usr\/lib\/$(DEB_BUILD_MULTIARCH)";  fi)

QT4_MA=$(shell if [ -f /usr/lib/pkgconfig/gtk+-3.0.pc ]; \
    then echo 0; \
    else echo 1;  fi)

ifeq ("$(GTK2_MA)",1)
        GTK2_ACT="sed -i 's/@GTK2_MA@'/Multi-Arch: same/g' debian/control"
else
        GTK2_ACT="sed -i '/@GTK2_MA@'/d debian/control"
endif

ifeq ("$(GTK3_MA)",1)
        GTK3_ACT="sed -i 's/@GTK3_MA@'/Multi-Arch: same/g' debian/control"
else
        GTK3_ACT="sed -i '/@GTK3_MA@'/d debian/control"
endif

ifeq ("$(QT4_MA)",1)
        QT4_ACT="sed -i 's/@QT4_MA@'/Multi-Arch: same/g' debian/control"
else
        QT4_ACT="sed -i '/@QT4_MA@'/d debian/control"
endif
