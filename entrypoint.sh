#!/bin/bash
set -e

# Railsに対応したファイルserver.pidが存在しているかもしれないので削除
rm -f /myapp/tmp/pids/server.pid

# コンテナーのプロセスを実行（Dockerfile内のCMDに設定されているもの）
exec "$@"
