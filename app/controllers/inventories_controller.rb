class InventoriesController < ApplicationController
  def home
  	@products = Product.all
  	@warehouse = Warehouse.all
  end
end

  	# @products = Product.joins(warehouses: :inventories)
  # 	byebug

  # 	result = {}

  # 	@products.each do |product|
  # 		result['Sku_code'] = 
  # 		result['Product_name'] = 
  # 		product.warehouses.each do |warehouse|
  # 			result[warehouse.wh_code+"item_count"] =   