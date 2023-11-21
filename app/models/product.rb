class Product < ApplicationRecord
    include CreateSlug
    before_save :create_slug
    has_many :variants, dependent: :destroy
   
end
