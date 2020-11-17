class UpdateDataTypeOfSku < ActiveRecord::Migration[6.0]
  def change
  	change_column :products, :sku_code, :string
  end
end
