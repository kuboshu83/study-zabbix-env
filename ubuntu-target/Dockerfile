FROM ubuntu:24.04

WORKDIR /root

USER root

RUN apt update && \
    apt install -y wget && \
    wget https://repo.zabbix.com/zabbix/7.4/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.4+ubuntu24.04_all.deb && \
    dpkg -i zabbix-release_latest_7.4+ubuntu24.04_all.deb && \
    apt update && \
    apt install -y zabbix-agent