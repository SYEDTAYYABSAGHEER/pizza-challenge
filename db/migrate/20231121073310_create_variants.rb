class CreateVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :variants do |t|
      t.string :title
      t.decimal :sale_price
      t.decimal :cost_price
      t.string :sku

      t.timestamps
    end
  end
end
