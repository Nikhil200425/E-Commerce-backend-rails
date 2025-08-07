class OrdersController < ApplicationController
    def index
        @orders = Order.all
        render json: @orders
    end
    def create
        order = Order.new(order_params)
        if order.save
            render json: order, status: :created
        else
            render json: {error: "Error"}, status: :ok
        end
    end
    private
    def order_params
        params.require(:order).permit(:name, :address, :email, items: [:id, :name, :price])
    end
end
