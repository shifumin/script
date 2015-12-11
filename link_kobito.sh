#!/bin/bash

# リンク元のDropboxのデータ保存ディレクトリ
dropbox_data_dir=~/Dropbox/Kobito
# リンク先のKobitoのデータ保存ディレクトリ
kobito_data_dir=~/Library/Containers/com.qiita.Kobito/Data/Library/Kobito

cd $kobito_data_dir
## 既存のリンクを削除する
rm kobito.db && echo "既存のKobito.dbのハードリンクを削除"
rm Kobito.db-shm && echo "既存のKobito.db のハードリンクを削除"
rm Kobito.db-wal && echo "既存のKobito.db のハードリンクを削除"

## 新しくハードリンクを貼る
ln $dropbox_data_dir/Kobito.db && echo "新規Kobito.db のハードリンクを作成"
ln $dropbox_data_dir/Kobito.db-shm && echo "新規Kobito.db-shm のハードリンクを作成"
ln $dropbox_data_dir/Kobito.db-wal && echo "新規Kobito.db-wal のハードリンクを作成"
