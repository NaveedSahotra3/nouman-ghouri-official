# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

portfolios_items = [
  { title: "Sweet Fruit", category: "Video", thumbnail: "img/placeholders/1-1.jpg", image: "img/portfolio/1.jpg", link: "https://www.youtube.com/watch?v=ICr_bOuM9Zo" },
  { title: "Good Present", category: "Branding", thumbnail: "img/placeholders/1-1.jpg", image: "img/portfolio/2.jpg", link: "img/portfolio/2.jpg" },
  { title: "Ice Cream", category: "Design", thumbnail: "img/placeholders/1-1.jpg", image: "img/portfolio/3.jpg", link: "img/portfolio/3.jpg" },
  { title: "Black Coffee", category: "Video", thumbnail: "img/placeholders/1-1.jpg", image: "img/portfolio/4.jpg", link: "https://www.youtube.com/watch?v=ICr_bOuM9Zo" },
  { title: "Blue Lemon", category: "Branding", thumbnail: "img/placeholders/1-1.jpg", image: "img/portfolio/5.jpg", link: "img/portfolio/5.jpg" },
  { title: "Delicious Cherry", category: "Design", thumbnail: "img/placeholders/1-1.jpg", image: "img/portfolio/7.jpg", link: "img/portfolio/7.jpg" }
]

portfolios_items.each do |item|
  PortfolioItem.create(item)
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?