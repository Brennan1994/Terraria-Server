FROM ubuntu:latest AS base

ENV DL_LINK=https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip
ENV DL_VERSION=1449
ENV DL_FILE=terraria-server-1449.zip

ADD $DL_LINK /$DL_FILE


