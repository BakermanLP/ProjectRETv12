VERSION=0.2.0



mv mods/OptiFine* oldmods/
~/bin/twitch-export-builder_linux_amd64 -c .build.json -d . -o ~/Downloads -p $VERSION -n ProjectRETv12
zip -r ~/Downloads/ProjectRETv12-Server-$VERSION \
    config \
    forge-*installer.jar \
    Install.* \
    mods \
    resources \
    scripts \
    server-icon.png \
    server.properties \
    ServerStart.* \
    settings.* \

mv oldmods/OptiFine* mods/
