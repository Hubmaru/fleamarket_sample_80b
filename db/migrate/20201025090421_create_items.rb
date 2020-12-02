class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.integer :price, null: false
      t.integer :prefecture_id, index: true, foreign_key: true, null: false
      t.integer :condition_id, index: true, foreign_key: true, null: false
      t.string :brand, index: true
      t.integer :category_id, index: true, foreign_key: true, null: false
      t.integer :size_id, index: true, foreign_key: true
      t.integer :cost_id, index: true, foreign_key: true, null: false
      t.integer :days_id, index: true, foreign_key: true, null: false
      t.integer :seller_id, index: true
      t.integer :buyer_id, index: true
      t.timestamps
    end
  end
end