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
MySQLはMAMPのソケットを指定しますので自分の環境に合う様に指定してください。
WordPressをインストールする際はパーミッションの変更・確認をしてください。

## 注意事項
サーバー起動時のポート数は8080ですので他のプログラムで使用している場合はポート数を変更するか8080ポートを使用しているプログラムを終了してから起動してください。
このスクリプトによって引き起こった損害等について責任は負いません。

## リンク
WP-CLI  <https://wp-cli.org/ja/>

Sakamochi   <https://sakamochi.link>

Facebook    <https://facebook.com/super-taishou>

