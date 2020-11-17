class Product < ApplicationRecord
	has_many :inventories
	has_many :warehouses, through: :inventories

	accepts_nested_attributes_for :inventories

end
