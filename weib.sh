#!/usr/bin/env bash


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


# 画面のクリーンアップ
clear

# コントロール画面の表示
function menu() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "　　      詳細情報は右記からご覧ください https://sakamochi.link        "
  echo "________________________________________________________________________"

  echo ""
  printf "\e[1;31m 　　⚠️　このシステムはWP-CLIがインストールされている環境が必須です。⚠️\e[0m\n"
  printf "\e[34mWP-CLIを使用して簡単にWordPressの環境を構築できるシステムです。 \e[0m\n"
  printf "\e[36mメニュー番号を入力してEnterキーを押してください。\n\e[0m\n"

  #メニュー
  echo "1 WordPressの簡単インストール"
  echo "2 サーバーの起動"
  echo "3 WordPressのインストール"
  echo "4 このプログラムについて"
  echo "5 ドキュメントを見る（Webサイト）"
  echo "6 更新をチェック"
  echo "7 終了する"

  echo ""
  echo ""

  # 入力画面
  printf "\e[1;33m番号を入力してください\e[0m"
  read -p ":" NUM
  if [ "${NUM}" = "1" ]; then
    install
  elif [ "${NUM}" = "2" ]; then
    server
  elif [ "${NUM}" = "4" ]; then
    info
  elif [ "${NUM}" = "5" ]; then
    docment
  elif [ "${NUM}" = "6" ]; then
    update
  elif [ "${NUM}" = "7" ]; then
    echo "Good Bye!"
  else
    printf "\e[1;31m 番号を入力してください！　\e[0m\n"
    printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
    read -p ":" YN
    menu
  fi
}

# 情報
function info() {

  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                　　     4 このプログラムについて        "
  echo "________________________________________________________________________"

  # 余白
  echo ""
  echo ""

  # 情報表示
  echo "[プログラム名]  WordPress 簡単インストール"
  echo "[開発元]       https://sakamochi.link"
  echo "[説明]         WordPressの環境構築をもっと簡単に行えるシェルスクリプトです。"
  echo "[バージョン]    0.1"
  echo "[最終更新]      2019年11月21日"
  echo ""
  echo "最新の情報やドキュメントは以下のサイトをご覧ください"
  echo "https://sakamochi.link/weib"
  echo ""
  echo ""


  # 入力
  printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
  read -p ":" YN
  menu
}

 # ドキュメント
function docment() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                   　　     5 ドキュメント        "
  echo "________________________________________________________________________"

  # 余白
  echo ""
  echo ""

  # 情報表示
  echo "ドキュメントを閲覧するには開発元Webサイトにアクセスする必要があります。"
  echo ""
  echo ""
  printf "\e[1;33m開発元Webサイトでドキュメントを見ますか？\e[0m"
  read -p "(y/n):" YN
  if [ "${YN}" = "y" ]; then
    open https://sakamochi.link/weib/
  fi
  printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
  read -p ":" YN
  menu
}

 # アップデートの確認
function update() {
  clear
  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                　　     6 アップデートの確認        "
  echo "________________________________________________________________________"

  # 余白
  echo ""
  echo ""

  # 情報表示
  echo "いつもご利用いただきありがとうございます。"
  echo "インターネットに接続してアップデートの確認を行います。"
  echo "アップデートの確認を中断したい場合はControl+Cを押して終了してください。"
  echo ""

  printf "\e[36mWebサイトからアップデートの確認ができます。\e[0m\n"
  printf "\e[36m詳しくはhttsp://sakamochi.link/weib/へ\e[0m\n"
  echo ""

  UPCH=`curl https://sakamochi.link/weib/update.php`
  echo ""

  if [ "$UPCH" == "0.1" ]; then
      printf "\e[1;33m お使いのプログラムは最新バージョンです。 \e[0m\n"
    else
      printf "\e[1;32m 新しいバージョンが見つかりました \e[0m\n"
      printf "\e[35m プログラムをアップデートするには開発元であるhttps://sakamochi.linkへアクセスする必要があります。 \e[0m\n\n"
      # 入力画面
      printf "\e[1;33m 開発元へアクセスしますか？ \e[0m"
      read -p "(y/n):" YN
      if [ "${YN}" = "y" ]; then
        open https://sakamochi.link/weib/
      fi
  fi

  echo ""
  echo ""

  # 入力
  printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
  read -p ":" YN
  menu
}

######################
##    サーバー起動　　 ##
######################
function server() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "　　    　　　     　 　　　  2 サーバー起動        "
  echo "________________________________________________________________________"

  echo ""
  printf "\e[1;31mポート番号:${PORT}が他のアプリケーションで開いていないことを確認してください\e[0m\n"
  printf "\e[34mWP-CLIを使用して簡単にWordPressの環境を構築できるシステムです。 \e[0m\n"
  printf "\e[36mメニュー番号を入力してEnterキーを押してください。\n\e[0m\n"

  #メニュー
  echo "1 プロジェクト名を指定して起動する"
  echo "2 パスを入力して起動する"
  echo "3 Webブラウザを起動させる"
  echo "4 メニューへ戻る"
  echo "5 終了する"

  echo ""
  echo ""

  # 入力画面
  printf "\e[1;33m番号を入力してください\e[0m"
  read -p ":" NUM
  if [ "${NUM}" = "1" ]; then
    serverlist
  elif [ "${NUM}" = "2" ]; then
    serverpath
  elif [ "${NUM}" = "3" ]; then
    open $ADRESS:$PORT
    server
  elif [ "${NUM}" = "4" ]; then
    menu
  elif [ "${NUM}" = "5" ]; then
    echo "Good Bye!"
  else
    printf "\e[1;31m 番号を入力してください！　\e[0m\n"
    printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
    read -p ":" YN
    server
  fi
}

function serverlist() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "　　　　　     　 　　　 2-1 プロジェクト名からサーバー起動        "
  echo "________________________________________________________________________"

  echo ""
  printf "\e[1;31mポート番号:${PORT}が他のアプリケーションで開いていないことを確認してください\e[0m\n"
  echo "デフォルトのポート数は${PORT}になっています。"
  printf "\e[36mポート数の変更はスクリプトファイルを編集してください。\n\e[0m\n"
  echo "プロジェクト名を指定してください"

  # プロジェクト名一覧
  ls $DIR


  echo ""

  # 入力画面
  printf "\e[1;33mプロジェクト名を入力してください\e[0m"
  read -p ":" NUM
  if [ "${NUM}" = "" ]; then
    printf "\e[1;31m プロジェクト名を入力してください！　\e[0m\n"
    printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
    read -p ":" YN
    serverlist
  else
    printf "\e[1;33m起動しています。\e[0m\n"
    printf "\e[1;33mしばらくお待ちください\e[0m\n\n"
    sleep 2
    open $ADRESS:$PORT
    wp server --host=0.0.0.0 --port=$PORT --docroot=$DIR$NUM
  fi

}

function serverpath() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "　　    　　　     　 　　　 2-2 パスからサーバー起動        "
  echo "________________________________________________________________________"

  echo ""
  printf "\e[1;31mポート番号:${PORT}が他のアプリケーションで開いていないことを確認してください\e[0m\n"
  echo "デフォルトのポート数は${PORT}になっています。"
  printf "\e[36mポート数の変更はスクリプトファイルを編集してください。\n\e[0m\n"
  echo "パスを入力してください"

  echo ""

  # 入力画面
  printf "\e[1;33mパスを入力してください\e[0m"
  read -p ":" NUM
  if [ "${NUM}" = "" ]; then
    printf "\e[1;31m パスを入力してください！　\e[0m\n"
    printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
    read -p ":" YN
    serverpath
  else
    printf "\e[1;33m起動しています。\e[0m\n"
    printf "\e[1;33mしばらくお待ちください\e[0m\n\n"
    sleep 2
    open $ADRESS:$PORT
    wp server --host=0.0.0.0 --port=$PORT --docroot=$NUM
  fi

}

######################
##  簡単インストール   ##
######################

# インストール処理
function install() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                　　     1 WordPress簡単インストール        "
  echo "________________________________________________________________________"

  # 余白
  echo ""
  echo ""

  #
  echo " これよりWordPressの簡単インストールを開始します。"
  echo "WordPressのライセンスに同意してください。"

  printf "\e[36m詳しくはドキュメントをご覧ください。https://sakamochi.link/weib\n\e[0m\n"

  # 余白
  echo ""
  echo ""

  printf "\e[1;33mインストール設定を開始します。\e[0m"
  read -p "(y/n):" YN
  if [ "${YN}" = "y" ]; then
    setup2
  else
    printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
    read -p ":" YN
    menu
  fi


}

# インストール処理
function setup2() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                　　     1-2 インストール設定        "
  echo "________________________________________________________________________"

  # 余白
  echo ""

  #
  echo "現在の設定です。"
  printf "\e[36mこの設定はスクリプトの書き換えで変更できます。\e[0m\n"
  printf "\e[36m必要であればスクリプトファイルの5行目を参考に変更してください。\e[0m\n"
  echo "■インストール基準"
  echo "[インストール先]     $DIR <- 次のステップで設定します"
  echo "[言語]               $LANG"
  echo "[アドレス]           $ADRESS:$PORT"
  echo "[ポート数]　　　　   $PORT"
  echo "■データベース"
  echo "[ホスト]             $DB_HOST"
  echo "[ユーザー名]         $DB_USER"
  echo "[パスワード]         $DB_PASS"
  echo "[接頭辞]             $DB_PREFIX"

  echo ""
  printf "\e[35m簡単インストールでは次のステップで設定するプロジェクト名とデータベースのテーブル名、ディレクトリ名は同じものになります。\e[0m\n"

  # 余白
  echo ""
  echo ""

  printf "\e[1;33mこの設定でよろしいですか？\e[0m"
  read -p "(y/n):" YN
  if [ "${YN}" = "y" ]; then
    setup3
  else
    printf "\e[1;33mひとつ前のステップに戻りますか？\e[0m"
    read -p "(y/n):" YN
    if [ "${YN}" = "y" ]; then
      install
    else
      printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
      read -p ":" E
      menu
    fi
  fi
}

# インストール処理
function setup3() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                　　     1-3 インストール先の指定        "
  echo "________________________________________________________________________"

  # 余白
  echo ""

  #
  echo "インストール先のディレクトリ名を設定をしてください。"
  printf "\e[36mディレクトリ名を指定するとデータベース名も同じになります。\e[0m\n"
  printf "\e[1;31m\e⚠️　ディレクトリのパーミッションを確認してください⚠️[0m\n"
  printf "\e[1;31m\e「/」や「\」などディレクトリで使用できない文字または記号を指定しないでください\e[0m\n"

  echo ""
  echo "■インストール基準"
  echo "[インストール先]     $DIR <- ここの名前を指定してください"

  echo ""
  printf "\e[35m次のステップで確認画面が表示されます。\e[0m\n"

  # 余白
  echo ""
  echo ""

  printf "\e[1;33mプロジェクト名またはディレクトリ名を入力してください\e[0m"
  read -p "(半角英数):" NM
  if [ "${NM}" = "" ]; then
    printf "\e[1;31m\e入力されていません！[0m\n"
    printf "\e[1;33mEnterキーを再入力\e[0m"
    read -p ":" E
    setup3
  else
    setup4 "${NM}"
  fi
}

# インストール処理
function setup4() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                　　     1-4 インストール設定        "
  echo "________________________________________________________________________"

  # 余白
  echo ""

  #
  echo "現在の設定です。"
  printf "\e[36mこの設定はスクリプトの書き換えで変更できます。\e[0m\n"
  printf "\e[36m必要であればスクリプトファイルの5行目を参考に変更してください。\e[0m\n"
  echo "■インストール基準"
  echo "[インストール先]     $DIR$1/ <- 設定した値"
  echo "[言語]               $LANG"
  echo "[アドレス]           $ADRESS:$PORT"
  echo "[ポート数]　　　　   $PORT"
  echo "■データベース"
  echo "[ホスト]             $DB_HOST"
  echo "[データベース名]     $1 <- 設定した値"
  echo "[ユーザー名]         $DB_USER"
  echo "[パスワード]         $DB_PASS"
  echo "[接頭辞]             $DB_PREFIX"

  echo ""
  printf "\e[35mインストールには時間がかかります。\e[0m\n"

  # 余白
  echo ""
  echo ""

  printf "\e[1;33mこの設定でインストールを開始しますか？\e[0m"
  read -p "(y/n):" YN
  if [ "${YN}" = "y" ]; then
    lastinstall "${1}"
  else
    printf "\e[1;33mひとつ前のステップに戻りますか？\e[0m"
    read -p "(y/n):" YN
    if [ "${YN}" = "y" ]; then
      setup3
    else
      printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
      read -p ":" E
      menu
    fi
  fi
}

# インストール処理
function lastinstall() {
  # 画面のクリーンアップ
  clear

  echo ""
  echo "‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾"
  echo "                        WordPress 簡単インストール                     "
  echo "                　　     1-5 インストール実行中        "
  echo "________________________________________________________________________"

  # 余白
  echo ""

  #
  printf "\e[1;31m\e⚠️　インストールを開始しています。⚠️[0m\n"
  printf "\e[1;31m\e電源を切ったり対象ディレクトリで操作しないでください[0m\n"

  echo ""
  printf "\e[35mインストールには時間がかかります。\e[0m\n"

  # 余白
  echo ""
  echo ""

  #####################
  ####   WP-CLI   #####
  #####################
  # ダウンロード
  wp core download --locale=ja --path=$DIR$1

  # インストールディレクトリへ移動
  cd $DIR$1

  # 設定 (環境変数で設定 $DBNAME, $DBUSER, $DBPASS, $DBHOST, $DBPREFIX)
  wp core config --dbname=$1 --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST --dbprefix=$DB_PREFIX

  # データベースの作成
  wp db create

  # インストール(環境変数で設定 $WPURL, $WPTITLE, $WPNAME, $WPPASSWORD, $WPEMAIL)
  wp core install --url=$ADRESS --title=$WP_TITLE --admin_user=$WP_NAME --admin_password=$WP_PASS --admin_email=$WP_EMAIL

  printf "\e[1;33mサーバーを起動させますか？\e[0m"
  read -p "(y/n):" YN
  if [ "${YN}" = "y" ]; then
    open http://localhost:$PORT
    wp server --host=0.0.0.0 --port=$PORT --docroot=$DIR$1
  else
    printf "\e[1;33mEnterキーを押してメニューへ\e[0m"
    read -p ":" E
    menu
  fi
}

# 実行
menu
