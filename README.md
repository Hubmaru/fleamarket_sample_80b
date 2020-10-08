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
## Association
- has_many :purchases, dependent: :destroy
- has_many  :credits, dependent: :destroy
- has_many :deliveries_addresses, dependent: :destroy


## creditsテーブル

|Colum|Type|Options|
|------|----|------|
|credit_number|integer|null: false, unique: true|
|expiration_year|integer|null: false|
|expiration_month|null: false|
|user_id|integer|foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
## Association
- belongs_to :user


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
|address|integer|null: false|
|apartment_name|string||
|apartment_room_number|integer||
|phone|string|null: false, unique: true|
|user_id|integer|foreign_key: true|
## Association
- belongs_to :user


# purchasesテーブル

|Colum|Type|Options|
|------|----|------|
|user_id|integer|foreign_key: true|
|item_id|integer|foreign_key: true|
## Association
- belongs_to :user
- belongs_to :item


# itemsテーブル

|Colum|Type|Options|
|------|----|------|
|name|string|null: false|
|text|text|null: false|
|price|integer|null: false|
|shipment_source|string|null: false|
|brand_id|integer|foreign_key: true|
|condition|string|null: false|
## Association
- has_many: images, dependent: :destroy
- has_one: purchase
- has_one: brand
- has_one: category
- has_one_active_hash: cost
- has_one_active_hash: days_to_ship
<!-- - has_one_active_hash: brand
- has_one_active_hash: category -->


# imagesテーブル

|Colum|Type|Options|
|------|----|------|
|photo|string|null: false|
|item_id|integer|null: false, foreign_key: true|
## Association
- belongs_to: item


# brandsテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|name|string|null: false|
## Association
- belongs_to: item


# categoriesテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|category_genre|string|null: false|
## Association
- belongs_to: item



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
