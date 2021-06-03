---
title: "GitHubPage + Hugo で最強ブログを作ろう"
date: 2021-06-02T09:34:11+09:00
categories : [
    programing,
]
tags : [
    "markdown",
    "hugo",
    "github"
]

---
# GitHubPage+Hugoで最強ブログを作ろう(1/3)

あーブログ始めないとなあ  
でもちゃんと作るとサーバー維持費用かかりそうだし、  
簡単に作ると多くは広告をつけることができないし、  
どうすればいいんだろうなあと考えていた時にいいやり方を見つけました！  
今回のやり方であれば  
独自ドメインのブログをgithub管理で運営できそうです。  
ではさっそくやり方を記事にまとめます！  

## 導入手順

前提の環境はWindows、gitとgoを事前にインストールしている状態です。

## Hugoのインストールからブログ作成まで

PowerShellを立ち上げます。  
以下コマンドを実行してまずscoopをインストールします。

```powershell
Set-ExecutionPolicy RemoteSigned
iex (New-Object net.webclient).downloadstring('https://get.scoop.sh')
```

このscoopはWindows用コマンドラインインストーラーです。
このインストーラーを使ってhugoとhugo-extendedをインストールします。

```powershell
scoop install hugo
scoop install hugo-extended
```

## Hugoとは

ざっくりいうと、レイアウトがある程度整ったサイトをすぐに作れるやつです。  
同じ用途のサービスとしてWordPressが有名かと思います。  
違いは動的サイト、自由度の高いサイトがWordPressでできる点に対し、  
Hugoは静的サイト、事前に作成した**テンプレートデザイン**に従ったサイトができます。  
例えばブログであればマークダウンファイルを配置しコマンドを実行すると公開用ファイルが生成されます。  

```
本体
 ├── 設定ファイル
 ├── マークダウンで書いた記事①
 └── 公開用ファイル③
```

```
コマンドを実行②
```

## Hugoのテンプレートデザイン

https://themes.gohugo.io

今回はhugo-future-imperfect-slimを使用しています。

## プロジェクト作成

ワークディレクトリにて以下のコマンドを実行するだけです。

```
hugo new site blog
```

この時点でGithubの設定も行います。
先に、GitHub上で空のリポジトリ(ここでは `blog`)を作り、リモートURL登録をします。

```bash
$ cd blog
$ git init
$ git remote add origin https://github.com/shortBread2329/blog.git
```

## テーマをSubmoduleで登録

git submoduleコマンドを使うことで、外部のgitリポジトリを自分のgitリポジトリのサブディレクトリに登録できます。

このコマンドを使うことで、テンプレートデザインをダウンロードすることなく、githubから参照させることができます。

```bash
$ git submodule add https://github.com/pacollins/hugo-future-imperfect-slim.git themes/hugo-future-imperfect-slim
$ git submodule add https://github.com/CaiJimmy/hugo-theme-stack/ themes/hugo-theme-stack
```

## 次回はテーマの設定の続きを記事にします。乞うご期待