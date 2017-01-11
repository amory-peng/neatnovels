class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.float :popularity
      t.text :description

      t.timestamps
    end

    add_index :books, :title
    add_index :books, :year
    add_index :books, :popularity
  end
end
