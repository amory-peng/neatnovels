class Changeprotectedvarname < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookshelves, :protected, :protect
  end
end
