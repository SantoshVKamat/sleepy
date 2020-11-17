class ProductsController < ApplicationController

	# def edit
	# 	@Product = Product.find(params[:id])
	# end

	# def update
	# end

	def edit
	  @product = Product.find(params[:id])
	  # @product.inventories.build
	end

	def update
		@product = Product.update(product_params)
		redirect_to root_path
		# def update
		# if @user.update(user_params)
		# 	flash[:notice] = "Your account information is updated successfully"
		# else
		# 	render 'edit'
		# end
	# end
	  # @inventories = Inventory.update(inventory_params)
	end

private
  def product_params
    params.require(:product).permit(:sku_code, :product_name, inventories_attributes: [:item_count, :low_item_threshold])
  end

end
