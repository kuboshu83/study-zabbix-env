FROM ubuntu:24.04

WORKDIR /root

USER root

RUN apt update && \
    apt install -y wget && \
    wget https://repo.zabbix.com/zabbix/7.4/release/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.4+ubuntu24.04_all.deb && \
    dpkg -i zabbix-release_latest_7.4+ubuntu24.04_all.deb && \
    apt update && \
    apt install -y zabbix-agent && \
    cp -ip /etc/zabbix/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf.org && \
    sed -i -e 's/^Server=127.0.0.1$/Server=zabbix-server/' \
        -e 's/^ServerActive=127.0.0.1$/ServerActive=zabbix-server/' \
        -e 's/^Hostname=Zabbix server$/Hostname=Ubuntu Zabbix target/' \
        -e '74i AllowKey=system.run[*]' \
        /etc/zabbix/zabbix_agentd.conf 