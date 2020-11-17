class Inventory < ApplicationRecord
	belongs_to :product
	belongs_to :warehouse

	before_create :item_counts

	private
	def item_counts
		p"----in item_counts"
	end

end

