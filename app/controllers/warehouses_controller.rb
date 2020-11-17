class WarehousesController < ApplicationController

	def new
		@warehouse = Warehouse.new
	end

	def create
		@warehouse = Warehouse.new(params.require(:warehouse).permit(:wh_code,:wh_name,:pincode))
		if @warehouse.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end



end