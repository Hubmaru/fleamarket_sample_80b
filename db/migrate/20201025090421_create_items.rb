class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :text
      t.integer :price
      t.string :shipment_sorce_id
      t.string :condition_id
      t.integer :brand_id
      t.integer :category_id
      t.integer :cost_id
      t.integer :days_to_ship_id
      t.integer :seller_id
      t.integer :buyer_id
      t.timestamps
    end
  end
end
