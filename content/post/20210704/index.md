---
title: "Windowsで異なるバージョンのRubyを使いたい"
date: 2021-07-04T00:10:04+09:00
categories : [
"テクノロジー"
]
tags : [
"ruby",
"rails",
"uru"
]
image: image-20210804135308649.png
---

普段は最新のRubyを使っているけど、

Ruby on Railsなど環境によっては古いバージョンを使い分けたいときに。

- 環境
  - windows10
  - Ruby 2.6.3 2.7.3
  - uru 0.8.5
- uru公式サイト: https://bitbucket.org/jonforums/uru/wiki/Home

## uruを導入する

### uru の準備

1. 使い分けたいバージョンのRubyをインストール

   - メインで使う方のバージョン(ここでは2.6)のみパスを通すと便利
   - 先に2.7のパスを通していた場合は環境変数を編集
     - 参考: [Qiita - Windows10で実行ファイルへのパスを通す手順](https://qiita.com/shuhey/items/7ee0d25f14a997c9e285)

2. uru

   をダウンロードページからDL

   - DLリンク: https://bitbucket.org/jonforums/uru/wiki/Downloads
   - `uru-0.x.x-windows-x86` をクリック

3. DLされた `uru-0.x.x-windows-x86.7z` を解凍

4. uru_rt.exeを適当なフォルダに移動

   - ここでは `C:\Program Files\uru` に移動

5. コマンドラインで uru を使うため、移動した先へのパスを通す

6. コマンドラインで下記を実行

   ```
   $ uru_rt admin install
   ---> Installing uru into C:\Program Files\uru
   ```

   

7. 同じフォルダに uru.bat, uru.ps1 が生成されていることを確認

### Rubyのパスをuruに登録

1. コマンドラインで下記を実行(Ruby2.6パスを登録)

   ```
   # C:\Ruby24-x64\bin はRubyのDL先に合わせて変更
   $ uru admin add C:\Ruby24-x64\bin
   ---> Registered ruby at `C:\Ruby24-x64\bin` as `263p62`
   ```

   

2. Ruby2.5も同様に登録

3. 登録されたか確認

```
uru ls
    263p62      : ruby 2.6.3p62 (2019-04-16 revision 67580) [x64-mingw32]
    273p183     : ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [x64-mingw32]
```

## uruを使ってみる

1. 現在はパスを通してある Ruby2.7.3 が使える状態

   ```
   $ ruby -v
   ruby 2.7.3p183 (2021-04-05 revision 6847ee089d) [x64-mingw32]
   ```

2. uru で Ruby2.6 に切り替え

   ```
   # "263p62" は "uru ls" で出てきた文字列
   $ uru 263p62
   ---> now using ruby 2.6.3p62 tagged as `263p62`
   ```

3. 以降はコマンドライン実行中なら Ruby2.6 になります

```
$ ruby -v
ruby 2.6.3p62 (2019-04-16 revision 67580) [x64-mingw32]
```

### .ruby-version ファイルでバージョン指定

1. .ruby-version ファイルを作成

   - 普通にエクスプローラーで新規テキストファイルをリネームしようとすると「ファイル名を入力してください」と出てしまいます
   - これはテキストエディタで新規保存時に名前を指定すると回避できます

2. .ruby-version ファイルには使いたいRubyバージョンのみを記載(Ruby2.6.3を使いたいとき)

   .ruby-version

   ```
   2.6.3
   ```

3. `auto` オプションを使うと .ruby-version に記載したバージョンに変更されます

```
$ uru auto
---> now using ruby 2.6.3p62 tagged as `263p62`
```

