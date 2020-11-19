class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name,null: false
      t.text       :text,null: false
      t.integer   :price,null: false
      t.integer :shipment_source_id,null: false
      t.integer :condition_id,null: false
      t.integer :brand_id,null: false
      t.integer :category_id,null: false
      t.integer :cost_id,null: false
      t.integer :days_to_ship_id,null: false
      t.integer :seller_id,null: false,null: false
      t.integer :buyer_id,null: false
      t.integer :size_id,null: false
    end
  end
end
