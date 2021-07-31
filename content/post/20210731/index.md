---
title: "pythonで自作関数をモジュール化・パッケージ化"
date: 2021-07-31T21:58:40+09:00
categories : [
"プログラミング"
]
tags : [
"python"
]
---

# pythonで自作関数をモジュール化・パッケージ化

私がTwitterAPIを叩く処理を実装していた際にライブラリ化したくなったのでまとめてみます。

## 前提条件

- Python 3.0以上

## 構成ディレクトリ

以下のようなフォルダとファイルを作成していきます。

```
./mylibrary
--- /mylibrary
    ---/__init__.py
        file1.py
        file2.py
--- /setup.py
```

- mylibraryフォルダ

  ライブラリ化したいソースをここに配置していきます。

- \__init__.py

  ```python
  from .file1 import class1
  from .file2 import class2
  from .file3 import * 
  ```

  

- setup.py

  インストール時の構成を記述するファイルです。

  setup.pyの書き方は、本来はもっといろいろと書くべきのようですが、

  今回は公開することを考えず最小限で行きます。

```python
from setuptools import setup

setup(
    install_requires=[],
    entry_points={
        "console_scripts":[
            "myapp = test:ggg"
        ]
    }
)
```

- `install_requires`
  - importしている依存ライブラリをリストで羅列する
  - "sys"など標準ライブラリを書くとエラーになる

## 完成したライブラリのインストール

あとはライブラリをインストールするだけです.

```
python setup.py install
```

お疲れ様でした!
