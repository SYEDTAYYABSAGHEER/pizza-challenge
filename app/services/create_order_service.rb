class CreateOrderService

    def self.create
        1.upto(10) do |i|
            puts "Order #{i} is created"
            order = Order.create(tax: rand(20..40), delivery_charges: rand(10..15))
            random_number = rand(1..5)
            1.upto(random_number) do |i|
            line_item = order.line_items.new(variant_id: rand(1..7), product_id: rand(1..7))
            line_item.save
            end
            order.order_updater
       end
    end
end    