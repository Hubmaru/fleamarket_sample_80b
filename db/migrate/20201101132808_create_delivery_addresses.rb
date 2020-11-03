class CreateDeliveryAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_addresses do |t|
      t.string "delivery_family_name", null: false
      t.string "delivery_last_name", null: false
      t.string "delivery_family_name_kana", null: false
      t.string "delivery_last_name_kana", null: false
      t.string "postal_code", null: false
      t.string "prefecture", null: false
      t.string "municipality", null: false
      t.integer "address", null: false
      t.string "apartment_name"
      t.integer "apartment_room_number"
      t.string "phone", null: false, unique: true
      t.integer "user_id", null: false
      t.timestamps
    end
  end
end
