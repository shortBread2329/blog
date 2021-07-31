---
title: "pythonで自作関数をモジュール化・パッケージ化"
date: 2021-07-31T21:58:40+09:00
categories : [
"プログラミング"
]
tags : [
"python"
]
draft: true
---

# pythonで自作関数をモジュール化・パッケージ化

私がTwitterAPIを叩く処理を実装していた際にライブラリ化したくなったのでまとめてみます。

## 前提条件

- Python 3.0以上

## 構成ディレクトリ

以下のようなフォルダとファイルを作成していきます。

```
|--sample_project
|  |--sample
|  |  |--sample.py
|  |  |--hoge.py
|  |--setup.py
```

- sampleフォルダ

  ライブラリ化したいソースをここに配置していきます。

  sample.pyやhoge.pyはつまりライブラリ化したいソースです。

  

- setup.py

  インストール時の構成を記述するファイルです。

### setup.py

```
from setuptools import setup, find_packages

setup(
    name='Sample',
    version="0.0.1",
    description="Sample Code",
    long_description="",
    author='名前',
    license='MIT',
    classifiers=[
        "Development Status :: 1 - Planning"
    ]
)
```
