expose:
	echo "clean = sudo lb clean"
	echo "config = lb config"
	echo "build =sudo lb build"
	echo "all = clean; config; build"
	echo "packages = echo \"package list\""
	cat config/package-lists/build.list.chroot

clean:
	sudo lb clean; echo "cleaned"

cleaner:
	sudo lb clean

config:
	lb config

packages:
	cd config/package-lists/ && \
	rm build.list.chroot build.list.binary 2> /dev/null ; \
	echo "awesome" >> build.list.chroot && \
	echo "awesome-extra" >> build.list.chroot && \
	echo "tlp" >> build.list.chroot && \
	echo "tlp-rdw" >> build.list.chroot && \
	echo "conky" >> build.list.chroot && \
	echo "gpgv-static" >> build.list.chroot && \
	echo "xdm" >> build.list.chroot && \
	echo "wicd-gtk" >> build.list.chroot && \
	echo "wicd-cli" >> build.list.chroot && \
	echo "aircrack-ng" >> build.list.chroot && \
	echo "nmap" >> build.list.chroot && \
	echo "vlc" >> build.list.chroot && \
	echo "youtube-dl" >> build.list.chroot && \
	echo "wikipedia2text" >> build.list.chroot && \
	echo "medit" >> build.list.chroot && \
	echo "markdown" >> build.list.chroot && \
	echo "pandoc" >> build.list.chroot && \
	echo "build-essential" >> build.list.chroot && \
	echo "git" >> build.list.chroot && \
	echo "tig" >> build.list.chroot && \
	echo "nano" >> build.list.chroot && \
	echo "medit" >> build.list.chroot && \
	echo "python-vte" >> build.list.chroot && \
	echo "sakura" >> build.list.chroot && \
	echo "whiptail" >> build.list.chroot && \
	echo "surfraw" >> build.list.chroot && \
	echo "surfraw-extra" >> build.list.chroot && \
	echo "uzbl" >> build.list.chroot && \
	echo "xombrero" >> build.list.chroot && \
	echo "suckless-tools" >> build.list.chroot && \
	echo "openrc" >> build.list.chroot && \
	echo "paxctl" >> build.list.chroot && \
	echo "gradm2" >> build.list.chroot && \
	echo "lftp" >> build.list.chroot && \
	echo "mat" >> build.list.chroot && \
	echo "apg" >> build.list.chroot && \
	echo "usbutils" >> build.list.chroot && \
	echo "bluetooth" >> build.list.chroot && \
	echo "mutt" >> build.list.chroot && \
	echo "coreutils" >> build.list.chroot && \
	echo "git" >> build.list.chroot && \
	echo "paxctl" >> build.list.chroot && \
	echo "jackd2" >> build.list.chroot && \
	echo "jackeq" >> build.list.chroot && \
	echo "jackmeter" >> build.list.chroot && \
	echo "secure-delete" >> build.list.chroot && \
	ln -s build.list.chroot build.list.binary

build:
	sudo lb build

all:
	make clean ; \
	make config ; \
	make packages ; \
	make build

