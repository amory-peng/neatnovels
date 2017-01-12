# OBJECT
#
count = @count
@books.each do |book|
  json.set! count do
    json.extract! book, :id, :title, :author, :year, :image_url
  end
  count += 1
end


#ARRAY
# json.array! @books do |book|
#   json.extract! book, :id, :title, :description, :author, :year
# end
