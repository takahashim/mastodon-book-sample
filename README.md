# Sample code of "Mastodon Book"

This repository have sample code repository for "Kore-ga Mastodon da!"(Impress R&D, ISBN: 9784844397724).

## How to use

* modify config.yml; get access_token and write it.
* execute `bundle install`
* execute `bundle exec toot.rb` or `bundle exec timeline.rb`

## REST API samples

* [toot hello](./toot_hello/): toot simply "hello"
* [toot in private](./toot_private/): reply toot with "private" visibility
* [toot with image](./toot_image/): toot with image
* [timeline by REST API](./rest_timeline/): get timeline using REST API

## Streaming API samples

* [timeline by Streaming API](./streaming_timeline/): get timeline using Streaming API

-----

(In Japanese)

# 「これがマストドンだ！」サンプルコード

[マストドン研究会編『これがマストドンだ！　使い方からインスタンスの作り方まで』（インプレスR&D, ISBN: 9784844397724）](http://nextpublishing.jp/book/8776.html)の中の「マストドンAPIの叩き方」という章のサンプルコードです。

紙面の都合上、完全に動くコードは掲載できなかったのですが、こちらは完全版になっています。

## 使い方

* access_tokenを取得して、その値をconfig.ymlに書き込む
* `bundle install` を実行する
* `bundle exec toot.rb` または `bundle exec timeline.rb` を実行する

## REST APIサンプル

* [toot hello](./toot_hello/): 単に"hello"とトゥートするサンプル
* [toot in private](./toot_private/): visibilityを"private"にして、リプライとしてトゥートするサンプル
* [toot with image](./toot_image/): 画像つきでトゥートするサンプル
* [timeline by REST API](./rest_timeline/): REST APIでタイムラインを取得するサンプル

## Streaming APIサンプル

* [timeline by Streaming API](./streaming_timeline/): Streaming APIでタイムラインを取得するサンプル



