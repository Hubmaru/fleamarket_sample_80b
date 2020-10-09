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
|user_id|integer|null: false, foreign_key: true|
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
|user_id|integer|null: false, foreign_key: true|
## Association
- belongs_to :user


# purchasesテーブル

|Colum|Type|Options|
|------|----|------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
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
|condition|string|null: false|
|brand_id|integer|foreign_key: true|
|category_id|integer|foreign_key: true|
|cost_id|integer|foreign_key: true|
|days_to_ship_id|integer|foreign_key: true|
## Association
- has_many: images, dependent: :destroy
- has_one: purchase
- belongs_to: brand
- belongs_to: category
- has_one_active_hash: cost
- has_one_active_hash: days_to_ship


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
- has_many: items


# categoriesテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|name|string|null: false|
## Association
- has_many: items



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
