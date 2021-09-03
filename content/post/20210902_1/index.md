---
title: "20210902_1"
date: 2021-09-02T06:27:52+09:00
categories : [
"プログラミング"
]
tags : [
"python",
"selenium",
"ChromeDriver",
]
draft: true
---

# 【Pythonライブラリ】ChromeDriverを自動更新する方法

PythonのSeleniumドライバでブラウザ操作自動化をしてみたはいいけど、

ブラウザバージョン更新のたびにChromeDriverを手動で更新しなければいけないのか？

それを調べている人が多いのではないかと思います。

この記事では自動更新する方法を紹介していきます。

## ChromeDriverを自動更新する手順

### webdriver_managerをインストール

コマンド```pip install webdriver-manager```でインストールします。

Successfully installed...と表示されればOKです。

### コード実装

webdriver_managerをインポートし、webdriverの引数として渡します。

```python
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
 
driver = webdriver.Chrome(ChromeDriverManager().install())
driver.get('https://google.com')
```

### あとは実行するだけ



