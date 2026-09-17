# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

return unless Rails.env.development?

rows = [
    [ "The Glass Harbor", "Mira Vale", "Fiction", 1890, 8, "2024-03-12" ],
    [ "A Map of Embers", "Leon Reed", "Fantasy", 2490, 3, "2025-06-01" ],
    [ "The Quiet Kingdom", "Ana Brook", "Fantasy", 2150, 0, "2022-11-20" ],
    [ "Cities Before Us", "Ivan Stone", "History", 3200, 5, "2023-02-10" ],
    [ "Small Useful Programs", "Lena Code", "Technology", 2990, 2, "2026-01-15" ],
    [ "Letters from the Valley", "Niko West", "Fiction", 1590, 12, "2021-08-03" ]
]

rows.each do |title, author, genre, price, stock, date|
    book = Book.find_or_initialize_by(title: title)
    book.update!(author: author, genre: genre, price_cents: price, stock: stock, published_on: date, description: "A sample #{genre.downcase} book for Bookstagram on Rails")
end
