install:
	mkdir -p pkg/DEBIAN
	mkdir -p pkg/data/data/com.termux/files/usr/bin
	mkdir -p pkg/data/data/com.termux/files/usr/share
	cp -rf src/bin/* pkg/data/data/com.termux/files/usr/bin
	cp -rf src/share/* pkg/data/data/com.termux/files/usr/share
	cp -rf build/termux/apt/* pkg/DEBIAN
	chmod 755 pkg/DEBIAN/postinst
	chmod 755 pkg/DEBIAN
	dpkg-deb -b pkg
	mv pkg.deb pypa.deb
	rm -rf pkg
