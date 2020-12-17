# README

#fleamarket_sample_80b DB設計

## usersテーブル

|Colum|Type|Options|
|------|----|------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|real_family_name|string|null: false|
|real_last_name|string|null: false|
|real_family_name_kana|string|null: false|
|real_last_name_kana|string|null: false|
|birth|date|null: false|
|introduction|text||
## Association
- has_many: seller_items, foreign_key: :seller_id, class_name: :items
- has_many: buyer_items, foreign_key: :buyer_id, class_name: :items
- has_one: card, dependent: :destroy
- has_one: delivery_address, dependent: :destroy
- has_many: likes
- has_many: comments


## cardsテーブル

|Colum|Type|Options|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
## Association
- belongs_to: user


## deliveryAddressesテーブル

|Colum|Type|Options|
|------|----|------|
|delivery_family_name|string|null: false|
|delivery_last_name|string|null: false|
|delivery_family_name_kana|string|null: false|
|delivery_last_name_kana|string|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|municipality|string|null: false|
|address|string|null: false|
|apartment_name|string||
|apartment_room_number|string||
|phone|string||
|user_id|reference|null: false, foreign_key: true|
## Association
- belongs_to: user, optional: true


# itemsテーブル

|Colum|Type|Options|
|------|----|------|
|name|string|null: false|
|text|text|null: false|
|price|integer|null: false|
|prefecture_id|integer|index: true, foreign_key: true, null: false|
|condition_id|integer|index: true, foreign_key: true, null: false|
|brand|string|index: true|
|category_id|integer|index: true, foreign_key: true, null: false|
|cost_id|integer|index: true, foreign_key: true, null: false|
|days_id|integer|index: true, foreign_key: true, null: false|
|seller_id|integer|index: true, foreign_key: true, null: false|
|buyer_id|integer|index: true, foreign_key: true|
|size_id|integer|index: true, foreign_key: true|
## Association
- has_many: images, dependent: :destroy
- accepts_nested_attributes_for :images, allow_destroy: true
- belongs_to: brand
- belongs_to: category
- belongs_to: size, optional: true
- has_one_active_hash: cost
- has_one_active_hash: days
- has_one_active_hash: prefecture
- has_one_active_hash: condition
- belongs_to: seller, class_name: :user
- belongs_to: buyer, class_name: :user, optional: true


# imagesテーブル

|Colum|Type|Options|
|------|----|------|
|photo|string|null: false|
|item_id|integer|null: false, foreign_key: true|
## Association
- belongs_to: item


# categoriesテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|name|string||
|ancestry|string|index: true|
## Association
- has_many: items


# sizesテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|name|string||
|ancestry|string|index: true|
## Association
- has_many: items


## likesテーブル

|Colum|Type|Options|
|------|----|------|
|user_id|integer||
|item_id|integer||
## Association
- belongs_to: user
- belongs_to: item


## ER図
https://gyazo.com/e98a96f06f78278e7eef231292bbe1b5


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...