class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  before_create :create_order_number
  has_many :coupons, dependent: :destroy

  def create_order_number
    self.order_number =  "#{SecureRandom.hex(6)} - #{SecureRandom.hex(4)} - #{SecureRandom.hex(6)}"
  end


  def order_updater
    coupon = self.coupons.create(price: 20, title: 'Discount Coupon', number: SecureRandom.hex(3), type: DiscountCoupon)
    promotion = self.coupons.create(price: 30, title: 'Promotion Coupon', number: SecureRandom.hex(3), type: PromotionCoupon)
    price = self.line_items.pluck(:price).compact.sum
    self.update(price: (price - coupon.price.to_f - promotion.price.to_f))
  end

end
