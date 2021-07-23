---
title: "実装"
date: 2021-07-21T19:03:43+09:00
categories : [
]
tags : [
https://web-camp.online/lesson/curriculums/197/contents/1158
]
draft: true
---

# 実装

目次

- Refileの設定

制作したポートフォリオにAIの機能を追加して下さい。
**なお、機能は前章までで学習したGoogle Vision API / Google Natural Language APIのいずれかを使用してください。**

### Refileの設定

AI系の外部APIで使用した「sample_app_demo_api」はRefileを使用していますが、あらかじめ画像のアップロード先を変更してあります。
これについては[Google Vision API (画像認識)](https://web-camp.online/lesson/curriculums/197/contents/1149)の章内でも触れています。

PFに機能追加する際も、Refileを使用している場合は同様の設定をしておきましょう。

アップロード先の変更は以下のように行います。

config/initializers/refile.rb

```ruby
Refile.backends['store'] = Refile::Backend::FileSystem.new('public/uploads/')
```



**機能を実装できたら、以下の流れで合否判定の確認依頼と、課題提出フォームの入力をお願いします。**

\1. メンターへ、ポートフォリオ上でAIの機能が問題なく動作しているか、確認を依頼してください。
この時、通常の質問と同様に、入力フォームから連絡ください。その際、タイトルに「AI教養コース　ポートフォリオ確認依頼」と記載します。

\2. 対応時に、API実装内容の画面共有と、実装内容の説明をお願いします。最後にメンターから問題なく実装できている旨の承認を得てください。

\3. 確認が終わりましたら、課題提出報告フォームから提出をお願いします。その際、承認したメンターの名前の記載をお願いします。
　 追加開発終了後は[こちらの提出フォーム](https://forms.gle/9fSubjF18QZr1Ng98)より提出して下さい。
※「提出する課題を選んで下さい」の項目では「ポートフォリオへの機能追加 (AI機能)」を選択して下さい
