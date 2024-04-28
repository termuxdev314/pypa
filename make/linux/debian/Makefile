install:
	mkdir -p pkg/DEBIAN
	mkdir -p pkg/usr/bin
	mkdir -p pkg/usr/share
	cp -rf src/bin/* pkg/usr/bin
	cp -rf src/share/* pkg/usr/share
	cp -rf build/debian/* pkg/DEBIAN
	chmod 755 pkg/DEBIAN/postinst
	chmod 755 pkg/DEBIAN
	dpkg-deb -b pkg
	mv pkg.deb pypa.deb
	rm -rf pkg
