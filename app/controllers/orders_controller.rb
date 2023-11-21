class OrdersController < ApplicationController

    def index
        @orders = Order.includes(:line_items)
    end

end