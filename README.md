# Podman Composeを利用したZabbixの実験環境

 

# 起動方法

以下のコマンドで環境が起動するので、起動後にlocalhost:8080にアクセスしてください。

```bash
podman compose up -d
```

初期アカウントは以下の通りです。

```text
User: Admin
Password: zabbix
```

また、以下のコマンドで停止します。

```bash
podman compose down
```

# 初回起動時の設定

## Zabbixサーバー監視用のエージェント設定

Zabbixサーバーにはエージェントがインストールされていません。
そのため初回起動時には、存在しないエージェント経由でサーバーの状態を取得しようとして失敗します。

そこで、Zabbixサーバー情報取得をサーバー上のエージェント経由ではなく、composeで起動したエージェント経由で行うように設定します。

![set-zabbix-server-agent](./docs/figures/set-zabbix-server-agent.png)


# 参考

- [Zabbix公式マニュアル](https://www.zabbix.com/jp/manuals)
- [Zabbixサーバー(PostgreSQL)のコンテナイメージ](https://hub.docker.com/r/zabbix/zabbix-server-pgsql)
- [Zabbixインターフェース(nginx)のコンテナイメージ](https://hub.docker.com/r/zabbix/zabbix-web-nginx-pgsql/)
- [PostgreSQLのコンテナイメージ](https://hub.docker.com/_/postgres)
- [Zabbixエージェントのコンテナイメージ](https://hub.docker.com/r/zabbix/zabbix-agent/)