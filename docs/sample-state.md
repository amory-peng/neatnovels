```js
{
  session: {
    currentUser: {
      username: "guest",
      id: 1
    },
    errors: []
  },

  forms: {
    addReview: { errors: [] },
    createShelf: { errors: [] }
  },

  books: {
    1: {
      title: "Sample Title",
      author: "John Smith",
      image_url: "somehwere/somewhere"
    }
  },

  bookshelves: {
    1: {
      name: "currently reading",
      owner_id: 1
      books: {
        1: {
          title: "Sample Title",
          author: "John Smith",
          image_url: "somehwere/somewhere"
        }
      }
    }
  },

  currentBook: {
    id: 1,
    title: "Sample Title",
    author: "John Smith",
    description: "neat",
    reviews: {
      1: {
        author: "Jim",
        title: "good book",
        body: "it was neat"
      }
    }
  }
}
