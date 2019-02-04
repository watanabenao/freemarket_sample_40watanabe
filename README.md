## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|phone_num|string|null: false|

### Association
- has_one :profile
- has_one :credit_card
- has_many :products, dependent: :destroy
- has_many :likes, dependent: :destroy
- has_many :liked_products, throuth: :likes, source: :product


## profilesテーブル

|Column|Type|Options|
|------|----|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|profile|text||
|avator|string||
|birthday|date|null: false|
|postal_code|string||
|prefecture|integer|null: false|
|city|string|null: false|
|address|string|null: false|
|building|string||
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user


## credit_cardsテーブル

|Column|Type|Options|
|------|----|-------|
|number|string|null: false|
|month|integer|null: false|
|year|integer|null: false|
|security_code|integer|null: false|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user

## productsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|text|null: false|
|size|string|null: false|
|product_state|integer|null: false|
|delivery_fee|integer|null: false|
|shipping_area|integer|null: false|
|shipping_day|integer|null: false|
|price|integer|null: false|
|saler|string|null: false|
|buyer|string||
|category|references|null: false, foreign_key: true|
|brand|references|foreign_key: true,|

### Association
- belongs_to :saler, class_name: "User"
- belongs_to :buyer, class_name: "User"
- belongs_ to :category
- belongs_ to :brand
- has_many :product_images
- has_many :likes
- has_many :liked_users, through: :likes, source: :user 

## product_imagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product|references|null: false, foreign_key: true|

### Association
- belongs_to :products

## brandsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string||

### Association
- has_many :products

## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|parent_id|integer||

### Association
- has_many :products

## likesテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|product|references|null: false, foreign_key: true|

### Association
- belongs_to :users
- belongs_to :products