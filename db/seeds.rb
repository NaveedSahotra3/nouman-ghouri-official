# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data
PortfolioItem.destroy_all


# db/seeds.rb
if PortfolioItem.count == 0
  portfolios_items = [
    { title: "Sweet Fruit", category: "Video", link: "https://www.youtube.com/watch?v=ICr_bOuM9Zo", image_filename: "1.jpg" },
    { title: "Good Present", category: "Branding", link: "img/portfolio/2.jpg", image_filename: "2.jpg" },
    { title: "Ice Cream", category: "Design", link: "img/portfolio/3.jpg", image_filename: "3.jpg" },
    { title: "Black Coffee", category: "Video", link: "https://www.youtube.com/watch?v=ICr_bOuM9Zo", image_filename: "4.jpg" },
    { title: "Blue Lemon", category: "Branding", link: "img/portfolio/5.jpg", image_filename: "5.jpg" },
    { title: "Delicious Cherry", category: "Design", link: "img/portfolio/6.jpg", image_filename: "6.jpg" }
  ]

  portfolios_items.each do |item|
    portfolio_item = PortfolioItem.create!(
      title: item[:title],
      category: item[:category],
      link: item[:link]
    )

    # Attach thumbnail and image files
    thumbnail_path = Rails.root.join('app/assets/images/img/placeholders/1-1.jpg')
    image_path = Rails.root.join("app/assets/images/img/portfolio/#{item[:image_filename]}")

    if File.exist?(thumbnail_path)
      portfolio_item.thumbnail.attach(io: File.open(thumbnail_path), filename: '1-1.jpg')
    else
      puts "Thumbnail file not found: #{thumbnail_path}"
    end

    if File.exist?(image_path)
      portfolio_item.image.attach(io: File.open(image_path), filename: item[:image_filename])
    else
      puts "Image file not found: #{image_path}"
    end
  end

  puts "Portfolio items seeded successfully!"
else
  puts "Portfolio items already exist. Skipping seeding."
end

puts "Portfolio items seeded successfully!"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?