---
title: "SeleniumWebdriverチートシート"
date: 2021-08-09T23:35:50+09:00
categories : [
"プログラミング"
]
tags : [
"selenium",
"selenium-webdriver",
"python",
"Java",
"C#",
"Ruby",
]
---

## 特定のURLでブラウザを起動する

Java

```
driver.get("URL");
```

C#

```
driver.Url = "URL";
```

Python

```
driver.get("URL")
```

Ruby

```
driver.get("URL") 
```

## ページ遷移したいとき

Java

```
driver.navigate().to("URL");
```

C#

```
driver.Navigate().GoToUrl("URL");
```

Python

```
driver.get("URL")
```

Ruby

```
driver.navigate.to("URL") 
```

## 一つ前に戻りたいとき

Java

```
driver.navigate().back();
```

C#

```
driver.Navigate().Back();
```

Python

```
driver.back()
```

Ruby

```
driver.navigate.back 
```

## 一つ前に進みたいとき

Java

```
driver.navigate().forward();
```

C#

```
driver.Navigate().Forward();
```

Python

```
driver.forward()
```

Ruby

```
driver.navigate.forward 
```

## ブラウザを更新する

Java

```
driver.navigate().refresh();
```

C#

```
driver.Navigate().Refresh();
```

Python

```
driver.refresh()
```

Ruby

```
driver.navigate.refresh
```

## 現在のURLを知りたいとき

Java

```
driver.getCurrentUrl()
```

C#

```
driver.Url;
```

Python

```
driver.current_url
```

Ruby

```
driver.current_url
```

## タイトルを知りたいとき

Java

```
driver.getTitle():
```

C#

```
driver.Title;
```

Python

```
driver.title
```

Ruby

```
driver.title
```

## ページのソースを取得したいとき

Java

```
driver.getPageSource();
```

C#

```
driver.PageSource;
```

Python

```
driver.page_source
```

Ruby

```
driver.page_source
```

## ウインドウを閉じたいとき

Java

```
driver.close();
```

C#

```
driver.Close();
```

Python

```
driver.close()
```

Ruby

```
driver.close
```

## すべてのウインドウを閉じたいとき

Java

```
driver.quit();
```

C#

```
driver.Quit();
```

Python

```
driver.quit()
```

Ruby

```
driver.quit
```

## ある要素を取得したいとき

Java

```
driver.findElement(By.className("classname")); //classでの指定
driver.findElement(By.id("id")); //idでの指定
driver.findElement(By.xpath("xpath")); //xpathでの指定
```

C#

```
driver.FindElement(By.ClassName("classname")); //classでの指定
driver.FindElement(By.Id("id")); //idでの指定
driver.FindElement(By.Xpath("xpath")); //xpathでの指定
```

Python

```
driver.find_element_by_class_name("classname") # classでの指定
driver.find_element_by_id("id") # idでの指定
driver.find_element_by_xpath("xpath") # xpathでの指定
```

Ruby

```
driver.find_element(:class, "classname") # classでの指定
driver.find_element(:id, "id") # idでの指定
driver.find_element(:xpath, "xpath") # xpathでの指定
```

## ある要素をクリックしたいとき

Java

```
driver.findElement(By.XPath("XPATH")).click();
```

C#

```
driver.FindElement(By.XPath("XPATH")).Click();
```

Python

```
driver.find_element_by_xpath("XPATH").click()
```

Ruby

```
driver.find_element(:xpath, "XPATH").click
```

## ある要素までスクロールしたいとき

Java

```
WebElement element = driver.findElement(By.id("ID"));
Actions actions = new Actions(driver);
actions.moveToElement(element);
actions.perform();
```

C#

```
var element = driver.FindElement(By.id("ID"));
Actions actions = new Actions(driver);
actions.MoveToElement(element);
actions.Perform();
```

Python

```
from selenium.webdriver.common.action_chains import ActionChains

element = driver.find_element_by_id("ID")
actions = ActionChains(driver)
actions.move_to_element(element)
actions.perform()
```

Ruby

```
driver.find_element(:id, "ID").location_once_scrolled_into_view
```

## ドロップダウンを選択したいとき

※Select Supportをimportする必要あり。

Java

```
element = driver.findElement(By.xpath("xpath"));
Select(element).selectByIndex(indexnum); // indexで選択
Select(element).selectByValue("value"); // valueの値
Select(element).selectByVisibleText("text"); // 表示テキスト
```

C#

```
element = driver.FindElement(By.Xpath("xpath"));
Select(element).SelectByIndex(indexnum); // indexで選択
Select(element).SelectByValue("value"); // valueの値
Select(element).SelectByText("text"); // 表示テキスト
```

Python

```
element = driver.find_element_by_xpath("xpath")
Select(element).select_by_index(indexnum) # indexで選択
Select(element).select_by_value("value") # valueの値
Select(element).select_by_visible_text("text") # 表示テキスト
```

Ruby

```
element = driver.find_element(:xpath, "xpath")
Select(element).select_by(:index, indexnum) # indexで選択
Select(element).select_by(:value, "value") # valueの値
Select(element).select_by(:text, "string") # 表示テキスト
```

## テキストを入力したいとき

Java

```
driver.findElement(By.id("ID")).sendKeys("string");
```

C#

```
driver.FindElement(By.id("ID")).SendKeys("string");
```

Python

```
driver.find_element_by_id("ID").send_keys("strings")
```

Ruby

```
driver.find_element(:id, "ID").send_keys("strings")
```

## テキストを取得したいとき

Java

```
driver.findElement(By.id("ID")).getText();
```

C#

```
driver.FindElement(By.id("ID")).Text;
```

Python

```
driver.find_element_by_id("ID").text
```

Ruby

```
driver.find_element(:id, "ID").text
```

## 属性を取得したいとき

Java

```
driver.findElement(By.id("ID")).getAttribute("value");
```

C#

```
driver.FindElement(By.id("ID")).GetAttribute("value");
```

Python

```
driver.find_element_by_id("ID").get_attribute("value")
```

Ruby

```
driver.find_element(:id, "ID").attribute("value")
```

## アラートをハンドリングしたいとき

Java

```
driver.switchTo().alert().accept();
```

C#

```
driver.SwitchTo().Alert().Accept();
```

Python

```
Alert(driver).accept()
```

Ruby

```
driver.switch_to.alert.accept
```

## ウインドウサイズを最大にしたいとき

Java

```
driver.manage().window().maximize();
```

C#

```
driver.Manage().Window().Maximize();
```

Python

```
driver.maximize_window()
```

Ruby

```
driver.manage.window.maximize
```

## 要素が表示されているかどうかを判定したいとき

Java

```
driver.findElement(By.xpath("xpath")).isDisplayed();
```

C#

```
driver.FindElement(By.Xpath("xpath")).Displayed(); 
```

Python

```
driver.find_element_by_xpath("xpath").is_displayed()
```

Ruby

```
driver.find_element(:xpath, "xpath").displayed?
```

## 要素が有効かどうかを判定したいとき

Java

```
driver.findElement(By.xpath("xpath")).isEnabled();
```

C#

```
driver.FindElement(By.Xpath("xpath")).Enabled(); 
```

Python

```
driver.find_element_by_xpath("xpath").is_enabled()
```

Ruby

```
driver.find_element(:xpath, "xpath").enabled?
```

## 要素が選択されているかどうかを判定したいとき

Java

```
driver.findElement(By.xpath("xpath")).isSelected();
```

C#

```
driver.FindElement(By.Xpath("xpath")).Selected(); 
```

Python

```
driver.find_element_by_xpath("xpath").is_selected()
```

Ruby

```
driver.find_element(:xpath, "xpath").selected?
```

# おわりに

間違ったものがあればご指摘頂ければ幸いです。
要望があれば随時追加していきます。
他にもみなさんが使うよく使いそうなメソッドがあれば教えてください。
