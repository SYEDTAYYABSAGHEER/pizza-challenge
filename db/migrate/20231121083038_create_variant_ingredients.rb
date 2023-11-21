class CreateVariantIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :variant_ingredients do |t|
      t.references :variant, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
