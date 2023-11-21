class VariantIngredient < ApplicationRecord
  belongs_to :variant
  belongs_to :ingredient
end
