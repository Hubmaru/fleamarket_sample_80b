class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :商品名
      t.text :説明文
      t.integer :価格
      t.string :発送地
      t.string :プランドID
      t.string :状態
      t.string :送料負担ID
      t.string :発送までの日数ID
      t.string :カテゴリID
      t.timestamps
    end
  end
end
