class Updatebooktable < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :popularity
  end
end
