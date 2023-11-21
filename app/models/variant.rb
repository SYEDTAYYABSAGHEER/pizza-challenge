class Variant < ApplicationRecord
  include CreateSlug
  before_save :create_slug
  belongs_to :product
  
  has_many :ingredients, dependent: :destroy

end
