# GameBase DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|



## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|



## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null :false|
|user_id|integer|null: false, foreign_key: true|




