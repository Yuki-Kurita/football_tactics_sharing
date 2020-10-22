# tactics_design
設計周りの管理リポジトリ

```bash
# sqlホストの立ち上げ
$ docker-compose up -d
# ER図の生成
$ docker run -v "$PWD/schema:/output" --net="host" schemaspy/schemaspy:6.1.0 -t pgsql \
-host $host:5432 -db test_db -u test_user -p $password -connprops useSSL\\=false -all
```
