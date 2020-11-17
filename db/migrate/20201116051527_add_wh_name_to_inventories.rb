class AddWhNameToInventories < ActiveRecord::Migration[6.0]
  def change
  	add_column :inventories, :wh_name, :string
  end
end
