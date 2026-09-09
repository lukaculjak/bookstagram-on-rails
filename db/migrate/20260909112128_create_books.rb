class CreateBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :description
      t.string :genre, null: false
      t.date :published_on
      t.integer :price_cents, null: false, default: 0
      t.integer :stock, null: false, default: 0
      t.timestamps
    end
    add_check_constraint :books, "stock >= 0", name: "books_stock_nonnegative"
    add_check_constraint :books, "price_cents >= 0", name: "books_price_nonnegative"
  end
end
