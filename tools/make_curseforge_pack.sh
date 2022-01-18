#!/bin/bash
VERSION=0.2.0
PROJECTNAME=ProjectRETv12

if [ ! -z "$1" ]; then
    VERSION=$1
fi

SCRIPT_REALNAME=$( realpath ${0} )
MODPACKDIR=$(realpath $( dirname $SCRIPT_REALNAME ) | sed 's#/tools.*$##')

# Temporär Entwicklungs Mods und Optifine entfernen
mkdir -p modtemp.$$
[ -d mods/OpenTerrainGenerator ] && mv mods/OpenTerrainGenerator modtemp.$$
[ -f mods/OptiFine* ] && mv -v mods/OptiFine* modtemp.$$
[ -f mods/externaltweaker-* ] && mv -v mods/externaltweaker-* modtemp.$$
[ -f mods/World-Stripper-* ] && mv -v mods/World-Stripper-* modtemp.$$
[ -f mods/craftdumper-* ] && mv -v mods/craftdumper-* modtemp.$$
[ -f mods/worldedit-forge-* ] && mv -v mods/worldedit-forge-* modtemp.$$
[ -f mods/pmdumper-* ] && mv -v mods/pmdumper-* modtemp.$$
[ -f mods/world_generation_profiler-* ] && mv -v mods/world_generation_profiler-* modtemp.$$
[ -f mods/avaritiarecipemaker-* ] && mv -v mods/avaritiarecipemaker-* modtemp.$$

# Modlist im Markdown Format
php ${MODPACKDIR}/tools/make_modlist.php > modlist.md

# Curseforge Client Pack zusammenbauen
[ -f ~/Downloads/$PROJECTNAME-$VERSION.zip ] && rm ~/Downloads/$PROJECTNAME-$VERSION.zip
BUILDDIR=$( mktemp -d )
mkdir ${BUILDDIR}/overrides
cd ${MODPACKDIR}

echo "Packe Client Modpack unter ${BUILDDIR} zusammen"
cp manifest.json modlist.html modlist.md ${BUILDDIR}/
rsync -a config resources scripts ${BUILDDIR}/overrides/
cd ${BUILDDIR}
zip -r ~/Downloads/$PROJECTNAME-$VERSION.zip *
echo "Fertiges Client ZIP File zum Hochladen nach Curseforge ~/Downloads/ProjectRETv12-${VERSION}.zip"
cd ${MODPACKDIR}
rm -r ${BUILDDIR}

# Curseforge Server Pack zusammenbauen
[ -f ~/Downloads/$PROJECTNAME-Server-$VERSION.zip ] && rm ~/Downloads/$PROJECTNAME-Server-$VERSION.zip
BUILDDIR=$( mktemp -d )
cd ${MODPACKDIR}

echo "Packe Server Modpack unter ${BUILDDIR} zusammen"
cp manifest.json modlist.html modlist.md ${BUILDDIR}/
rsync -a config resources scripts mods ${BUILDDIR}/
rsync -a serverfiles/ ${BUILDDIR}/
cd ${BUILDDIR}
zip -r ~/Downloads/$PROJECTNAME-Server-$VERSION.zip *
echo "Fertiges Server ZIP File zum Hochladen nach Curseforge ~/Downloads/$PROJECTNAME-Server-$VERSION.zip"
cd ${MODPACKDIR}
rm -r ${BUILDDIR}

# Make Curseforge Modpack
# Der hat so seine Probleme mit manchen Mods, deswegen vorgefertigte manifest.json
# ~/bin/twitch-export-builder_linux_amd64 -c .build.json -d . -o ~/Downloads -p $VERSION -n $PROJECTNAME

mv -v modtemp.$$/* mods/
rmdir modtemp.$$

# Changelog Generierung
OLDVERSION=$(jq -r .version ${MODPACKDIR}/old.json)

# Mod Changelog
java -jar ${MODPACKDIR}/tools/ChangelogGenerator-2.0.0-pre10.jar -m --new=manifest.json --old=old.json --output=mod_changelog.md
# Github Changelog
${MODPACKDIR}/tools/git-log-to-markdown --since=${OLDVERSION}

head -n 1 mod_changelog.md > changelog.md
sed 's/^##.*$/## Config and Repository Changes since '${OLDVERSION}'/' gitlog.md >> changelog.md
tail -n +2 mod_changelog.md | head -n -1 >> changelog.md

# mv old.json old.json.old
# mv new.json old.json

echo "# Abschliessende Kommandos"
echo "# Versionsfiles kopieren"
echo "cp old.json old.json.old ; cp manifest.json old.json"
echo "# Github Release einpflegen"
echo "gh release create ${VERSION} --notes-file build/changelog --title ${VERSION}"
