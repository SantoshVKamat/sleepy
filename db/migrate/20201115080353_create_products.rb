class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :sku_code
      t.string :product_name

      t.timestamps
    end
  end
end
