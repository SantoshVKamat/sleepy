class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.integer :product_id
      t.integer :warehouse_id
      t.integer :item_count
      t.integer :low_item_threshold

      t.timestamps
    end
  end
end
