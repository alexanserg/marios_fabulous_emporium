Product.destroy_all

50.times do |index|
  Product.create!(name: Faker::Commerce.product_name,
                cost: Faker::Number.within(range: 1..53000.0),
                country_of_origin: Faker::Nation.nationality)
end

p "Created #{Product.count} products"

Review.destroy_all

@products = Product.all
@products.each do |product|
  5.times do |index|
    Review.create!(author: Faker::Name.name,
                  content_body: Faker::Lorem.characters(number: 50..250),
                  rating: Faker::Number.within(range: 1..5),
                  product_id: product.id)
  end
end

p "Created #{Review.count} reviews"
