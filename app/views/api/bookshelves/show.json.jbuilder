json.extract! @bookshelf, :name, :id, :user_id, :protect


json.books do
  @bookshelf.books.each do |book|
    json.set! book.id do
      json.extract! book, :id, :title, :author, :image_url

    end
  end
end
