# Explorerとbitcoindの差分チェック

## 概要
bitcoinのexplorerであるblockchain.infoとbitcoindのブロック差分を比較して3ブロック以上差分がある場合はslackに通知します。

blochchain.infoのapi情報
https://www.blockchain.com/ja/api/blockchain_api

## インストール

```
cd プロジェクトディレクトリ
gem install bundler
gem bundle init
```
Gemfileに以下を追加
```
gem 'httpclient'
gem 'json'
gem 'slack-incoming-webhooks'
gem 'whenever', require: false
```
gemをインストール
```
bundle install
```
zshで使用する場合の設定
~/.zshrcに以下を追加
```
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init - zsh)"
```

## バッチの実行

```
bundle exec whenever # 登録内容の確認

crontab -l # 現在の登録を確認

bundle exec whenever --update-crontab 　# バッチの登録
```
## バッチの終了
```
bundle exec whenever --clear-crontab
```
