class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :variant
  belongs_to :order

  before_save :get_variant_price


  def get_variant_price
     self.price = self.variant.sale_price
  end

end
