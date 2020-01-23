# WordPress簡単インストールBash

## はじめに
このBashはWP-CLIをもっと簡単に操作できる様に作成したものです。
自分はターミナルでの操作があまり好きではないのでサクッとBashを書いてGUI的な感じにしました。

## 更新履歴
* 2019-11-22 バージョン0.1を公開

## 必須環境
WordPress簡単インストールを使用するには以下の環境が必要になります。
* macOS
* PHP
* MySQL
* WP-CLI

WP-CLIをインストールしてある環境下で動作します。

<https://wp-cli.org/ja/>

MySQLはMAMPのソケットを指定します。

また、開発段階ではmacOSを使用しています。

## インストール
ホームディレクトリより.bash_profileを開き以下を追加してください。

`alias mochi="sh /Users/[ユーザー名]/.var/weib.sh"`

weib.shの保存先に応じてパスを記述することとパーミッションを適当に変更してください。
記述し保存し終わったらターミナルで以下を実行してください。

`source .bash_profile`


## 使い方
ターミナルでmochiと入力するとメニューが立ち上がります。
画面の指示にしたがって作業するだけです。
<img src="https://i.imgur.com/iIasndc.png" alt="メニュー画面">
数字の入力は半角でお願いします。
こんな感じに動きます。
<img src="https://i.imgur.com/NZs2Rr3.png" alt="セットアップ画面">
直感で使いやすくしているので簡単に扱えるはず....

## 設定の変更
必要に応じて#定義の行から変更を行ってください。
```
#定義
VERSION=0.1
DIR="WordPressをインストールする場所（フルパス）"
LANG="ja"
ADRESS="アドレス（http://localhost）"
DB_HOST="MySQLのホスト"
DB_USER="MySQLユーザー名"
DB_PASS="MySQLパスワード"
DB_PREFIX="wp_"
PORT=8080
WP_TITLE="WordPressのタイトル"
WP_NAME="WordPressへログインする用のユーザー名の指定"
WP_PASS="WordPressへログインする用のパスワードの指定"
WP_EMAIL="WordPressに登録する用のメールアドレス"
```
MySQLはMAMPのソケットを指定しますので自分の環境に合う様に指定してください。
WordPressをインストールする際はパーミッションの変更・確認をしてください。

## 設定参考
```MAMPを使用した場合
#定義
VERSION=0.1
DIR="/var/www/WordPress/"
LANG="ja"
ADRESS="http://localhost"
DB_HOST="localhost:/Applications/MAMP/tmp/mysql/mysql.sock"
DB_USER="root"
DB_PASS="root"
DB_PREFIX="wp_"
PORT=8080
WP_TITLE="WordPressDeveloper"
WP_NAME="admin"
WP_PASS="admin"
WP_EMAIL="mail@127.0.0.1"
```
```Homebrewで環境構築を行った場合
#定義
VERSION=0.1
DIR="/var/www/WordPress/"
LANG="ja"
ADRESS="http://localhost"
DB_HOST="127.0.0.1"
DB_USER="root"
DB_PASS=""
DB_PREFIX="wp_"
PORT=8080
WP_TITLE="WordPressDeveloper"
WP_NAME="admin"
WP_PASS="admin"
WP_EMAIL="mail@127.0.0.1"
```

## 注意事項
サーバー起動時のポート数は8080ですので他のプログラムで使用している場合はポート数を変更するか8080ポートを使用しているプログラムを終了してから起動してください。
このスクリプトによって引き起こった損害等について責任は負いません。

## リンク
WP-CLI  <https://wp-cli.org/ja/>

Sakamochi   <https://sakamochi.link>

Facebook    <https://facebook.com/super-taishou>

