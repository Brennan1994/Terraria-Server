FROM alpine:3.20.3 AS base 

ENV DL_LINK=https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip
ENV DL_VERSION=1449
ENV DL_FILE=terraria-server-1449.zip

ADD $DL_LINK /$DL_FILE

RUN unzip $DL_FILE &&\
    cd $DL_VERSION/Linux &&\
    chmod a+x TerrariaServer.bin.x86_64 &&\
    mkdir /terraria-server &&\
    mv * /terraria-server

# FROM ubuntu:latest AS production

# ENV LOGPATH=/terraria-server/logs
# ENV WORLDPATH=/root/.local/share/Terraria/Worlds
# ENV WORLD_FILENAME=""
# ENV CONFIGPATH=/config
# ENV CONFIG_FILENAME="serverconfig.txt"

# EXPOSE 7777

# VOLUME [ "${WORLDPATH}", "${CONFIGPATH}", "${LOGPATH}" ]

# COPY --from=base /terraria-server/ /terraria-server/


