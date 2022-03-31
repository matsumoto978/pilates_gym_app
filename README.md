# PilatesApp

<div align="center">
<img src="https://user-images.githubusercontent.com/71010438/160656538-494e8f37-beb9-4e38-8c31-b2663ee2e74a.gif"
width="100%" heigth="100%">
</div>

## URL

- アプリ URL :

## アプリの特徴

都内のピラティススタジオを投稿、情報を共有するアプリです。

- ピラティススタジオの紹介やレビューができる
- 都内のピラティススタジオを検索できる
- 写真投稿や口コミ機能でスタジオの雰囲気が分かる
- 気に入ったピラティススタジオをイイねできる

## アプリの開発背景

近年、健康的な生活を求めてピラティスを趣味として行う人たちが増えてきました。しかし、ピラティススタジオ自体がまだ少ないことや、一般の人に情報が共有されていないことが多いため、その問題を解消するためにこのアプリを開発しました。

## 使用技術

- 言語：Ruby (2.7.2)
- フレームワーク：Ruby on Rails (6.1.4.6)
- フロントエンド：HTML/Scss/JavaScript
- DB：PostgreSQL
- インフラ：Heroku
- ソースコード管理：GitHub
- 開発環境：MacOS/Visual Studio Code

## 機能一覧

|     |             機能             |         gem 等          |
| :-: | :--------------------------: | :---------------------: |
|  1  |     ログイン・ログアウト     |         devise          |
|  2  |   ユーザー登録・編集、削除   |         devise          |
|  3  |      ゲストログイン機能      |         devise          |
|  4  |  アカウント登録、編集、削除  |            x            |
|  5  | ピラティススタジオ投稿(CRUD) |            x            |
| ６  |         コメント機能         |            x            |
|  7  |         画像投稿機能         | carrierwave/mini-magick |
| ８  |          管理者画面          |       ActiveAdmin       |
|  9  |           検索機能           |         Ransack         |
| 10  |      いいね機能(非同期)      |            x            |
| 11  |       ページネーション       |        kaminari         |
| 12  |     レスポンシブデザイン     |        Bootstrap        |

## ER 図

![pilates_app_gym](https://user-images.githubusercontent.com/71010438/161052829-12bfd8cc-f80b-4eed-ae4c-9ab4e9a3e6e0.jpg)

## 使い方

### スタジオ投稿

![post mov](https://user-images.githubusercontent.com/71010438/160858281-a474ea42-c139-4ece-82de-edb00e8933b0.gif)

### 検索機能

![ransack](https://user-images.githubusercontent.com/71010438/160660648-44229725-0d89-4dcb-b4b5-5a789f093889.gif)

### コメント機能

![comments-post](https://user-images.githubusercontent.com/71010438/160732604-0ce587b9-c1b5-4e6b-88e2-6ef384285d96.gif)

### プロフィール画面

![mypage mov](https://user-images.githubusercontent.com/71010438/160767908-81f2711f-0335-4e80-9885-cda96a258b9c.gif)

## 工夫した点

### タスク管理

チーム開発を意識した開発を行う為、下記を実施

1. Git, GitHub を用いたソース管理
2. Projects のカンバン方式でタスクを管理を採用
3. issue・ブランチをタスクごとに作成し

### 性別選択

- ピラティススタジオの中には、女性専用のピラティススタジオもあり男性が利用できない場合もあるため、今回は登録画面で性別を登録するように実装した。

## 追加予定機能

- 保存機能の実装
- Google マップ連携
- フォロー機能
- いいねしたスタジオを一覧表示
- post モデルに price カラムの追加
