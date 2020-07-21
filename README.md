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
