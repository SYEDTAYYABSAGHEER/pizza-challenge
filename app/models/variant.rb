class Variant < ApplicationRecord
  include CreateSlug
  before_save :create_slug
  belongs_to :product

  has_many :variant_ingredients, dependent: :destroy
  has_many :ingredients, through: :variant_ingredients

end
