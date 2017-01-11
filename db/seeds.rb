# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'jimbo', password: 'password')

Book.create(
  title: "Harry Potter",
  author: "JK Rowling",
  description: "follow a boy wizard and his magical adventures",
  year: 1995
)

bookArray = [];
while bookArray.length < 40
  newBook = {
    title: Faker::Book.title,
    author: Faker::Book.author,
    description: Faker::ChuckNorris.fact,
    year: rand(1.year)%10000
  }
  bookArray << newBook
end

Book.create(bookArray)
