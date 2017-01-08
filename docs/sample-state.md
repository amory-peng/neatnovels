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
      description: "neat",
      reviews: {
        1: {
          title: "neat book",
          body: "Sample Title is a neat book",
          author_id: 1
        }
      }
    }
  },

  bookshelves: {
    1: {
      name: "currently reading",
      books: [1, 5],
      owner_id: 1
    }
  },

}
