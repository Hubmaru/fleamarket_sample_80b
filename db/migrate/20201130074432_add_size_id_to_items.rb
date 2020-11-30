class AddSizeIdToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :size_id,  :integer
  end
end

# rails db:rollback STEP=8
# add column to items
# delete AddSizeIdToItems 
# rails db:migrate


