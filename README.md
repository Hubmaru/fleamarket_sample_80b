# README

#fleamarket_sample_80b DB設計

## usersテーブル

|Colum|Type|Options|
|------|----|------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
|person_id|integer|foreign_key: true|
## Association
- has_many :purchases, dependent: :destroy
- has_many :listings, dependent: :destroy
- has_many  :credits, dependent: :destroy
- has_many :deliveryAddresses, dependent: :destroy
- belongs_to :person


## creditsテーブル

|Colum|Type|Options|
|------|----|------|
|creditNumber|integer|null: false, unique: true|
|expirationYear|integer|null: false|
|expirationMonth|null: false|
|user_id|integer|foreign_key: true|
## Association
- belongs_to :user


## deliveryAddressesテーブル

|Colum|Type|Options|
|------|----|------|
|deliveryFamilyName|string|null: false|
|deliveryLastName|string|null: false|
|deliveryFamilyNameFurigana|string|null: false|
|deliveryLastNameFurigana|string|null: false|
|postalCode|integer|null: false|
|prefecture|string|null: false|
|municipality|string|null: false|
|address|integer|null: false|
|apartmentName|string||
|apartmentRoomNumber|integer||
|phone|integer|null: false, unique: true|
|user_id|integer|foreign_key: true|
## Association
- belongs_to :user


## personsテーブル

|Colum|Type|Options|
|------|----|------|
|realFamilyName|string|null: false|
|realLastName|string|null: false|
|realFamilyNameFurigana|string|null: false|
|realLastNameFurigana|string|null: false|
|birthYear|integer|null: false|
|birthMonth|integer|null: false|
|birthDay|integer|null: false|
## Association
- has_one :user, dependent: :destroy


# purchasesテーブル

|Colum|Type|Options|
|------|----|------|
|payment|integer|null: false|
|user_id|integer|foreign_key: true|
## Association
- belongs_to :user
- has_many :items, dependent: :destroy


# listingsテーブル

|Colum|Type|Options|
|------|----|------|
|shipmentSource|string|null: false|
|shippingCosts_daysToShips_id|integer|foreign_key: true|
|user_id|integer|foreign_key: true|
## Association
- belongs_to :user
- has_many :items, dependent: :destroy
- belongs_to :shippingCosts_daysToShips


# shippingCosts_daysToShipsテーブル 
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|shippingCost_id|integer|foreign_key: true|
|daysToShip_id|integer|foreign_key: true|
## Association
- belongs_to :shippingCost
- belongs_to :daysToShip


# shippingCostsテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|cost|string|null: false|
## Association
- has_many :shippingCosts_daysToShips
- has_many :dayToShips, through: :shippingCosts_daysToShips


# dayToShipsテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|days|string|null: false|
## Association
- has_many :shippingCosts_daysToShips
- has_many :shippingCosts, through: :shippingCosts_daysToShips


# itemsテーブル

|Colum|Type|Options|
|------|----|------|
|itemName|string|null: false|
|text|text|null: false|
|price|integer|null: false|
|purchase_id|integer|foreign_key: true|
|listing_id|integer|foreign_key: true|
|brand_id|integer|foreign_key: true|
|statuses_categories_id|integer|foreign_key: true|
## Association
- has_many: images, dependent: :destroy
- belongs_to: purchase
- belongs_to: listing
- belongs_to: brand
- belongs_to: statuses_categories


# imagesテーブル

|Colum|Type|Options|
|------|----|------|
|photo|integer|null: false|
|items_id|integer|foreign_key: true|
## Association
- belongs_to: item


# brandsテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|brandName|string||
## Association
- has_many: items


# conditions_categoriesテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|condition_id|integer|foreign_key: true|
|category_id|integer|foreign_key: true|
## Association
- belongs_to: condition
- belongs_to: category


# conditionsテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|conditionsGenre|string|null: false|
## Association
- has_many: conditions_categories
- has_many: categories, through: :conditions_categories


# categoriesテーブル
<!-- not update table -->
|Colum|Type|Options|
|------|----|------|
|categoryGenre|string|null: false|
## Association
- has_many: conditions_categories
- has_many: conditions, through: :conditions_categories



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
