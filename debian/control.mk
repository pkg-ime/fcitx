# Generate control files.
#

gen_control:
	cp debian/control.in debian/control
	for i in GTK2_ACT GTK3_ACT QT4_ACT; do $($$i); done
	sed 's/@GTK2_LIBDIR@/$(GTK2_LIBDIR)/g' \
	    debian/fcitx-frontend-gtk2.install.in > \
	    debian/fcitx-frontend-gtk2.install
	sed 's/@GTK3_LIBDIR@/$(GTK3_LIBDIR)/g' \
	    debian/fcitx-frontend-gtk3.install.in > \
	    debian/fcitx-frontend-gtk3.install
	sed 's/@QT4_LIBDIR@/$(QT4_LIBDIR)/g' \
	    debian/fcitx-frontend-qt4.install.in > \
	    debian/fcitx-frontend-qt4.install
