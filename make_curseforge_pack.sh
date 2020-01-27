#!/bin/bash
VERSION=0.2.0
PROJECTNAME=ProjectRETv12

if [ ! -z "$1" ]; then
    VERSION=$1
fi

# Temporär Entwicklungs Mods und Optifine entfernen
mkdir -p modtemp.$$
mv -v mods/OptiFine* modtemp.$$
[ -f mods/externaltweaker-* ] && mv -v mods/externaltweaker-* modtemp.$$
[ -f mods/World-Stripper-* ] && mv -v mods/World-Stripper-* modtemp.$$
[ -f mods/craftdumper-* ] && mv -v mods/craftdumper-* modtemp.$$
[ -f mods/worldedit-forge-* ] && mv -v mods/worldedit-forge-* modtemp.$$

# Make Curseforge Modpack
~/bin/twitch-export-builder_linux_amd64 -c .build.json -d . -o ~/Downloads -p $VERSION -n $PROJECTNAME

# Make Curseforge Server Modpack
zip -r ~/Downloads/$PROJECTNAME-Server-$VERSION.zip \
    config \
    forge-*installer.jar \
    Install.* \
    mods \
    resources \
    scripts \
    server-icon.png \
    server.properties \
    ServerStart.* \
    settings.*

mv -v modtemp.$$/* mods/
rmdir modtemp.$$

unzip ~/Downloads/$PROJECTNAME-$VERSION.zip manifest.json
php make_modlist.php > modlist.md


# rm -v manifest.json
