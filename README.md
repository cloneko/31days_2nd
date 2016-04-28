# 31days_2nd

31daysくらいで何か作ってデプロイする。

## 目標

* 某試験の1か月前(2016/05/31)までにSPAでCBT的な何かを作る
  * Android/iPhoneの標準ブラウザでできるようにする
  * 普通のPCのブラウザでもできるようにするけどとりあえずレスポンシブとかはあとで考える。
* 新しい言語には手を出さない(CoffeeScriptかTypeScriptでやる)
  * Material Designとかそういう誘惑に負けない
  * とりあえず動かせ俺
* 動くモノを作る
* テストコードも書けるようになってみる(っていうかどうやってSPAでTDDなの作るか知らない)

### ToDo

* [x] フレームワークの選定/雛形の作成
  * AngularJS/CoffeeScript/yeoman(+gulp)
* [ ] S3へのビルドスクリプトを書く(gulpで)
* [ ] First Deploy
* [ ] 問題を解けるようにする(表示・選択)
* [ ] 複数の問題を表示する(1画面1問)
* [ ] 採点

### 次の段階(夢/妄想)

* [ ] ユーザーの識別(Login?)
* [ ] レスポンシブ?
* [ ] まともなCI
* [ ] 裏で集計できるようにする(どうやってデータを溜めるか検討。AWS LambdaとAPI Gateway使ってみたい。もしくは無駄にFirehose → S3)

## Log

### 2016/04/26

* リポジトリ作った
* 目標決めた
* ってまだこの日は始まったばかり(1:29)なので朝から何やるか考える

### 2016/04/27

* AngularJSとCoffeeScriptでやるって決めた
* `yo angular --coffee`
* `yo angular:service cbtExam --coffee`
* はて、AngularJSってどう書くんだっけ?と忘れたはじめたのでチュートリアルもう一回やろ…

### 2016/04/28

* README.mdしか更新してない気がしてる…
* gulp bowerが通らん…ので`rm -fr cbt/*`。はぁ…
  * ってgulpはExperimentalなのかよ…ってなわけでgruntにした
    * そもそもgulpは使ったことあったけどgrunt使ったことなかったんでgulpでいいや…って選択したのによく見たらExperimentalって書いてあるやん…

```
    $ yo angular --coffee
    $ yo angular:controller examlist --coffee
```

剃り残したヒゲを抜こうとして毛抜きを手に取り、一生懸命抜こうとしてもひっからないなぁ…って凹んでたら持ってる向きが逆だったってくらい眠いのでとりあえず今日はここまでにしておく…

### 2016/04/29

* 飲み会帰り&朝になったら勉強会(イベント?)だしちょっとだけ。
* ng-repeatの使い方を思い出すためにexamlistをng-repeatで表示する部分を作った。
