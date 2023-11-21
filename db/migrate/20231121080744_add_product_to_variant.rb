class AddProductToVariant < ActiveRecord::Migration[7.0]
  def change
    add_reference :variants, :product, null: false, foreign_key: true
  end
end
