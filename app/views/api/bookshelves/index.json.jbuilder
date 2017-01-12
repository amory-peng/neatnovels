@bookshelves.each do |shelf|
  json.set! shelf.id do
    json.extract! shelf, :id, :name, :user_id

    json.books do
      shelf.books.each do |book|
        json.set! book.id do
          json.extract! book, :id, :title, :author, :image_url
        end
      end

    end

  end
end
