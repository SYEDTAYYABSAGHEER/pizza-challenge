require 'faker'

1.upto(10) do |i|
    PromotionCoupon.create(title: "Promotion Coupon #{i}",price: rand(10..20),number: SecureRandom.hex(4)  )
  end
  
  1.upto(10) do |i|
     DiscountCoupon.create(title: "Discount Couon #{i}",price: rand(10..20), number: SecureRandom.hex(4) )
  end


1.upto(100) do |i|
   puts 'Add Ingredient to database'
   Ingredient.create(name: Faker::Food.ingredient, price: Faker::Commerce.price)
end

puts 'Creating the Dumpy product for the project'
1.upto(10).each do |i|
  puts "Adding the Product #{i}"
  product = Product.create(title: Faker::Food.allergen, gtin: SecureRandom.hex(10),description: Faker::Food.description )
  1.upto(2).each do |i|
    puts "Attaching the variant #{i} to the Product"
    variant = Variant.create(title: Faker::Food.allergen,product_id: product.id, sale_price: rand(200..500),cost_price: rand(100..150))
    1.upto(10) do |i|
      puts "Add Ingredient #{i} into the variant"
      VariantIngredient.create(variant_id: variant.id, ingredient_id: rand(1..100) )
    end
  end
end

