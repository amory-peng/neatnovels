class CreateShelvings < ActiveRecord::Migration[5.0]
  def change
    create_table :shelvings do |t|
      t.integer :bookshelf_id
      t.integer :book_id

      t.timestamps
    end
    add_index :shelvings, :bookshelf_id
    add_index :shelvings, :book_id
  end
end
