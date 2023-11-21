class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  before_create :create_order_number

  def create_order_number
    self.order_number =  "#{SecureRandom.hex(6)} - #{SecureRandom.hex(4)} - #{SecureRandom.hex(6)}"
  end


  def order_updater
    price = self.line_items.pluck(:price).compact.sum
    self.update(price: price)
  end

end
