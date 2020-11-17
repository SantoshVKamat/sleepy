# class VarehousesController < ApplicationController
#   before_action :set_varehouse, only: [:show, :edit, :update, :destroy]

#   # GET /varehouses
#   # GET /varehouses.json
#   def index
#     @varehouses = Varehouse.all
#   end

#   # GET /varehouses/1
#   # GET /varehouses/1.json
#   def show
#   end

#   # GET /varehouses/new
#   def new
#     @varehouse = Warehouse.new
#   end

#   # GET /varehouses/1/edit
#   def edit
#   end

#   # POST /varehouses
#   # POST /varehouses.json
#   def create
#     @varehouse = Warehouse.new(varehouse_params)
#     @inventories = Inventory.new(inventory_params)

#     # if @inventories.save
#     #   p"----inventories----#{@inventories}"
#     #   @inventories.item_count = 0
#     #   @inventories.low_item_threshold = 10
#     # end
#     # @varehouse.inventories.each do |abc|
#     #   abc.item_count = 0
#     #   abc.low_item_threshold = 10
#     # end
#     if @varehouse.save
#       flash[:notice] = "varehouse was created successfully"
#       p"--inventories--#{@varehouse.inventories}"


#       redirect_to varehouses_url
#     else
#       render 'new'
#     end 

#     # respond_to do |format|
#     #   if @varehouse.save
#     #     format.html { redirect_to @varehouse, notice: 'Varehouse was successfully created.' }
#     #     format.json { render :show, status: :created, location: @varehouse }
#     #   else
#     #     format.html { render :new }
#     #     format.json { render json: @varehouse.errors, status: :unprocessable_entity }
#     #   end
#     # end

#     # if @varehouse.save
#     #   flash[:notice] = "varehouse details saved successfully !!"
#     #   # redirect_to new_varehouse

#     # else
#     #   render 'new'
#     # end

#   end

#   # PATCH/PUT /varehouses/1
#   # PATCH/PUT /varehouses/1.json
#   def update
#     respond_to do |format|
#       if @varehouse.update(varehouse_params_update)
#         format.html { redirect_to @varehouse, notice: 'Varehouse was successfully updated.' }
#         format.json { render :show, status: :ok, location: @varehouse }
#       else
#         format.html { render :edit }
#         format.json { render json: @varehouse.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /varehouses/1
#   # DELETE /varehouses/1.json
#   def destroy
#     @varehouse.destroy
#     respond_to do |format|
#       format.html { redirect_to varehouses_url, notice: 'Varehouse was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_varehouse
#       @varehouse = Varehouse.find(params[:id])
#     end

#     # Only allow a list of trusted parameters through.
#     # def varehouse_params
#     #   params.fetch(:varehouse, {})
#     # end

#     def varehouse_params
#       params.require(:varehouse).permit(:wh_code, :wh_name, :pincode)
#     end

#     def inventory_params
#       params.require(:inventory).permit(:item_count, :low_item_threshold)
#     end

#     # def varehouse_params_update
#     #   params.require(:varehouse).permit(:item_count, :low_item_threshold)
#     # end

# end
