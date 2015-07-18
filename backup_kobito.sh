#!/bin/bash

# データをバックアップするディレクトリ
backup_dir_path=~/Dropbox/project/Kobito
# Kobitoの元データ保存されているディレクトリ
data_dir_path=~/Library/Containers/com.qiita.Kobito/Data/Library/Kobito

# バックアップディレクトリの作成
if [ ! -e $backup_dir_path ]; then
  mkdir -p $backup_dir_path
fi

# バックアップファイルネームの作成
date=`date +"%Y%m%d"`
db_filename=Kobito.db.$date.bak
db_shm_filename=Kobito.db-shm.$date.bak
db_wal_filename=Kobito.db-wal.$date.bak

# バックアップ処理
echo "バックアップディレクトリは $backup_dir_path です"

cp -p $data_dir_path/Kobito.db $backup_dir_path/$db_filename && echo "Kobito.db を $db_filename としてバックアップしました"

cp -p $data_dir_path/Kobito.db-shm $backup_dir_path/$db_shm_filename && echo "Kobito.db-shm を $db_shm_filename としてバックアップしました"

cp -p $data_dir_path/Kobito.db-wal $backup_dir_path/$db_wal_filename && echo "Kobito.db-wal を $db_wal_filename としてバックアップしました"
