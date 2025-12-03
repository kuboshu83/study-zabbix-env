#!/usr/bin/sh

echo "start zabbix-agent ..."
service zabbix-agent start
service zabbix-agent status

exec bash
