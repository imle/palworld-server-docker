FROM steamcmd/steamcmd:latest

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        xdg-user-dirs=0.17-2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 steam && \
    useradd -u 1000 -g 1000 -ms /bin/bash steam
USER steam

ENV PORT= \
    PLAYERS= \
    MULTITHREADING=false \
    COMMUNITY=false \
    PUBLIC_IP= \
    PUBLIC_PORT= \
    SERVER_PASSWORD= \
    SERVER_NAME= \
    ADMIN_PASSWORD= \
    UPDATE_ON_BOOT=true \
    RCON_ENABLED=true \
    RCON_PORT=25575
