# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Product.create([
  { name: "Shirt", description: "Cotton Shirt", price: 49.99, img_url: "https://images.bewakoof.com/t1080/men-s-red-grey-checked-oversized-shirt-649868-1753186766-1.jpg" },
  { name: "T-shirt", description: "Cool t-shirt", price: 19.99, img_url: "https://images.bewakoof.com/t1080/men-s-black-hangin-astronaut-graphic-printed-oversized-t-shirt-504166-1741325888-1.jpg" }
])
