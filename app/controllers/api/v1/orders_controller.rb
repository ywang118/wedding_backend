class Api::V1::OrdersController < ApplicationController
  skip_before_action :authorized, only: [:index,:create,:destroy]
  def index
    orders = Order.all
   render json: orders
  end

  def create
   @order = Order.find_by(order_params)

   if @order
     @order = {found: true}
   else
     @order = Order.create(order_params)
   end

   render json: @order, status: :ok
 end

 def destroy
   @order = Order.find(params[:id])
   @order.destroy

   render json: @order, status: :ok
 end

 private
 def order_params
   params.require(:order).permit(:user_id, :photographer_id, :date)
 end
end
