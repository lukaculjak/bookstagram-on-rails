json.extract! book, :id, :title, :description, :genre, :published_on, :price_cents, :stock, :created_at, :updated_at
json.url book_url(book, format: :json)
