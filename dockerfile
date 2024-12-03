FROM alpine:3.20.3

ENV DLLINK=https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip
ENV DL_FILENAME=terraria-server-1449.zip

ADD DLLINK DL_FILENAME


