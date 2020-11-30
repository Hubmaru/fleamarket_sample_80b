class CreateSizes < ActiveRecord::Migration[6.0]
  def change
    create_table :sizes do |t|
      t.string :name
      t.string :ancestry, index: true
      t.timestamps
    end
  end
end
