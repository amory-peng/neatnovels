# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'jimbo', password: 'password')

Book.create(
  title: "Harry Potter and the Cursed Child – Parts One and Two (Special Rehearsal Edition)",
  author: "JK Rowling",
  description: "<p>Based on an original new story by J.K. Rowling, Jack Thorne and John Tiffany, a new play by Jack Thorne, Harry Potter and the Cursed Child is the eighth story in the Harry Potter series and the first official Harry Potter story to be presented on stage. The play received its world premiere in London’s West End on 30th July 2016.</p> <p>It was always difficult being Harry Potter and it isn’t much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children.</p> <p>While Harry grapples with a past that refuses to stay where it belongs, his youngest son Albus must struggle with the weight of a family legacy he never wanted. As past and present fuse ominously, both father and son learn the uncomfortable truth: sometimes, darkness comes from unexpected places.</p>",
  year: 2016,
  image_url: "http://books.google.com/books/content?id=tcSMCwAAQBAJ&printsec=frontcover&img=1&zoom=3&edge=curl&imgtk=AFLRE73oD2Cie21Jun4Dyejl4mHxTT4AqowSX9vJVFXX18ENh00krLPQ8T-d4cbqz7n8XroKOiIr5RB-NFJaY1w946u7Z4iDK3RVBrOnpMKlV_vmEXyTStg&source=gbs_api"
)

Bookshelf.create(user_id: 1, name: "read", protect: true)
Bookshelf.create(user_id: 1, name: "currently reading", protect: true)
Bookshelf.create(user_id: 1, name: "to read", protect: true)

Shelving.create(bookshelf_id: 1, book_id: 1)

bookArray = [];
count = 0
while bookArray.length < 100
  newBook = {
    title: "title#{count}",
    author: "author#{count}",
    description: Faker::ChuckNorris.fact,
    year: rand(400) + 1610
  }
  count += 1
  bookArray << newBook

end

Book.create(bookArray)
