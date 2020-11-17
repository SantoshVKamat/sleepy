class ChangeDatatypeOfWarehouseId < ActiveRecord::Migration[6.0]
  def change
  	change_column :inventories, :warehouse_id, :string
  end
end
