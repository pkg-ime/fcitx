# Generate control files.
#
gen_control:
	cat debian/control.in > debian/control
	$(shell for i in GTK2_MA GTK3_MA QT4_MA; do \
        if [ $($i) = 1 ]; then \
	    sed -i 's/@$($i)@/Multi-Arch: same/g' debian/control \
	else sed -i '/@$($i)@/d' debian/control; fi; done )
	sed 's/@GTK2_LIBDIR@/$(GTK2_LIBDIR)/g' \
	    debian/fcitx-frontend-gtk2.install.in > \
	    debian/fcitx-frontend-gtk2.install
	sed 's/@GTK3_LIBDIR@/$(GTK3_LIBDIR)/g' \
	    debian/fcitx-frontend-gtk3.install.in > \
	    debian/fcitx-frontend-gtk3.install
	sed 's/@QT4_LIBDIR@/$(QT4_LIBDIR)/g' \
	    debian/fcitx-frontend-qt4.install.in > \
	    debian/fcitx-frontend-qt4.install
