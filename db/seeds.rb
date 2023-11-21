require 'faker'

1.upto(100) do |i|
   puts "Add Ingredient to database"
   Ingredient.create(name: Faker::Food.ingredient, price: Faker::Commerce.price)
end

# #Creating the Product
# puts "Creating the Dumpy product for the project"
# 1.upto(10).each do |i|
#    Product.create(title: Faker::Food.allergen, gtin: SecureRandom.hex(10),description: Faker::Food.description )
# end


# puts "Creating the Dumpy Variant for the project"
# 1.upto(20).each do |i|
#     Variant.create(title: Faker::Food.allergen)
# end