class AddAuthorIndex < ActiveRecord::Migration[5.0]
  def change
    add_index :books, :author
  end
end
