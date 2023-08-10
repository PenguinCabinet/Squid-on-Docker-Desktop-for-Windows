# 🦑Squid on Docker Desktop for Windows🐋
Docker Desktop for Windows上で動く、Squidです。

# ℹ️ 使い方
1. ビルドしイメージを作成します
```
.\build.bat
```

2. 設定ファイルを初期化します
```
.\init_config.bat
```

3. squidディレクトリができるので、ご自由にsquid.confを書き換えてください

4. Docker Desktop for Windowsをログイン時に自動起動するように設定しておく(推奨)
Docker Desktop for Windowsが起動していないと、このSquidコンテナも起動しないためです。

5. Squidを起動
```
.\run.bat
```
`--restart=always`オプションがついているため、これ以降Docker Desktop for Windowsとともに、Squidコンテナも自動起動するようになります。

6. 下記をプロキシサーバーとして登録してください

|項目|データ|
|---|---|
|IPアドレス|127.0.0.1|
|Port|64000|

7. 設定ファイルを変更し、反映するには
```
.\run.bat
```

