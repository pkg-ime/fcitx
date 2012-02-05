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

QT4_LIBDIR=$(shell if [ -f /usr/lib/pkgconfig/QtCore.pc ]; \
    then echo "usr\/lib"; \
    else echo "usr\/lib\/$(DEB_BUILD_MULTIARCH)";  fi)

QT4_MA=$(shell if [ -f /usr/lib/pkgconfig/QtCore.pc ]; \
    then echo 0; \
    else echo 1;  fi)
