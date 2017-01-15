class EditImageUrlCol < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :image_url
    add_column :books, :image_url, :text
  end
end
