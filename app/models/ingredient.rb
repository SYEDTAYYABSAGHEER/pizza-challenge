class Ingredient < ApplicationRecord
    has_many :variant_ingredients, dependent: :destroy
    has_many :variants, through: :variant_ingredients
end
