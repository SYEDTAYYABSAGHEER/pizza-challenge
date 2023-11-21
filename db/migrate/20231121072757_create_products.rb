class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :sku
      t.string :gtin
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end
