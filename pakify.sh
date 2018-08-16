#!/usr/bin/env bash

mkdir -p pkg/files{/usr/bin,/usr/share/man/man1,/var/pak,/etc/pak/backups,/etc/pak/mirrors}
cp ./pak pkg/files/usr/bin
cp ./pak pkg/files/usr/bin/pak2
cat ./pak.1 | gzip > pkg/files/usr/share/man/man1/pak.1.gz
cat ./pak.1 | gzip > pkg/files/usr/share/man/man1/pak2.1.gz
mkdir -p pkg/.pak2
cp LICENSE pkg/.pak2/license
cd pkg
makepak pak-updates '' ../pak-updates.pak
cd ..
rm -rf pkg

