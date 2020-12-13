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
# gem "rails"
gem 'httpclient'
gem 'json'
gem 'slack-incoming-webhooks'

# cron
gem 'whenever', require: false
```
gemをインストール
```
bundle install
```
zshで
