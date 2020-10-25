class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :画像
      t.string :商品ID
      t.timestamps
    end
  end
end
