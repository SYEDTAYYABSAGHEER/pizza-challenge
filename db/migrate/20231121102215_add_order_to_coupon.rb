class AddOrderToCoupon < ActiveRecord::Migration[7.0]
  def change
    add_reference :coupons, :order, null: true, foreign_key: true
  end
end
