# db/migrate/TIMESTAMP_add_cover_to_books.rb
class AddCoverToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :cover, :string
  end
end
