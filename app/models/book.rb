class Book < ApplicationRecord
    GENRES = [ "Fiction", "Fantasy", "History", "Technology" ].freeze

    validates :title, :author, presence: true
    validates :genre, inclusion: { in: GENRES }
    validates :price_cents, :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
