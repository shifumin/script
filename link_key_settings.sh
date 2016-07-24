#!/bin/bash

# リンク元の鍵保存ディレクトリ
from_key_dir=~/Dropbox/project/.ssh

config_file=$from_key_dir/macbook/config
github_key_dir=$from_key_dir/macbook/github
sakuravps_key_dir=$from_key_dir/macbook/sakuravps

# リンク先の鍵保存ディレクトリ
to_key_dir=~/.ssh

ln -is $config_file $to_key_dir && echo "設定ファイルのシンボリックリンクを作成"
ln -is $github_key_dir $to_key_dir && echo "Githubの鍵保存ディレクトリのシンボリックリンクを作成"
ln -is $sakuravps_key_dir $to_key_dir && echo "さくらVPSの鍵保存ディレクトリのシンボリックリンクを作成"
