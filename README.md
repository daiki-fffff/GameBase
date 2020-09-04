# アプリ名
GAMEBASE  
URL http://54.150.59.230/  
テスト用アカウント  
ニックネーム　test  
メールアドレス　test@test.com  
パスワード　test123

# 使用技術
Ruby ver'2.6.3'  
Ruby on Rails  
CSS3  
HTML5  

# 概要
ゲームの感想を投稿できる掲示板です。  
テスト用アカウントでログインして、投稿してみてください。

# 詳細
会員登録、ログイン、投稿、投稿の編集、投稿の削除ができます。  
会員登録は、ニックネーム、メールアドレス、パスワードが必須です。  
ログインは、メールアドレスとパスワードで可能です。  
メールアドレスは、@マークを含んでください。  
パスワードは、６文字以上です。  
ニックネームに指定は特にありません。  
投稿は、ゲームタイトルと感想が必須です。  
感想は１〜１０００文字まで入力可能です。  
投稿の編集と削除は、自分の投稿のみです。  
会員登録後ログインすると上記の機能が使えます。  
会員登録していない場合は、投稿を閲覧することのみが可能です。  

# デモ　　
issuesに記載しています。　　
https://github.com/daiki-fffff/GameBase/issues/10

# 制作背景  
ゲームを初めてする人、次のゲームを決めかねている人にとってタイトルを選ぶきっかけになることを目標にしています。  
GeForce Nowのような月の利用料が定額で、プレイ本数無制限、専用機械が必要なくスマートフォンやタブレットでゲームが可能なサービスが登場したことで、ゲームをプレイする人が増えると考えました。  
はじめの一本は、ユーザーがゲームを続けていく上でとても重要だと考えています。  

# 課題や今後実装したい機能  
タグによる検索機能  
数段階による評価機能  
コメント機能  

# GameBase DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :impressions
- has_many :comments

## impressionテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :users
- has_many :comments
- has_many :impressions_tags
- has_many :tags, through: :impression_tags



## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null :false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :impression
- belongs_to :user


## tagsテーブル
Column|Type|Options|
|------|----|-------|
|text|text||
### Association
- has_many :impressions_tags
- has_many :impressions, through: :impression_tags


## impressions_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :impression
- belongs_to :tag
