class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :title
      t.string :type
      t.string :price
      t.integer :status
      t.string :number

      t.timestamps
    end
  end
end
