FROM kungfoome/steamcmd:debian-1700160359

RUN chmod -R 777 /app

RUN \
    printf "Installing Project Zomboid Server" \
        && /app/steam/steamcmd.sh \
            +@ShutdownOnFailedCommand 1 \
            +@NoPromptForPassword 1 \
            +force_install_dir "/app/pzserver/server" \
            +login anonymous \
            +app_update 380870 validate \
            +quit

COPY root /
