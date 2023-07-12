# logstashの動作確認テンプレート

Dockerfileをビルドして最新版を使う
```sh
docker compose up --build --force-recreate > out.txt
```

外部のMySQLに接続したい場合は、 `172.17.0.1` にポートフォワードしておく。
