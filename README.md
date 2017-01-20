# NeatNovels

[Neatnovels][heroku-link] is a single page application that allows users to search for books and
add to bookshelves. Inspired by goodreads, it is a full stack web app that uses Ruby
on Rails on the backend, a PostgreSQL database, and React/Redux on the frontend.

![Neatnovels home page](./docs/images/neatnovels-home-page.png)
## Features

### Guest Sign In
Guest users are dynamically generated accounts with preseeded books and shelves.

### Books and Bookshelves
Users can search through books and add to custom bookshelves.

Protected bookshelves "Read", "Currently reading", and "To read" are mutually exclusive.

### Infinite Scroll
Initial rendering of the books index page sends a request for 12 books, ordered by title. Once the
user scrolls near the bottom of the page, an event listener fires and sends a request for more books,
updating the store once the response is received:

```javascript
//in constructor
this.state = { lastBookId: 0, hasMore: true };
...

componentWillMount() {
  if (this.props.books.length === 0) {
    this.props.requestBooks(0);
  }
  document.addEventListener('scroll', this.handleScroll);
}

handleScroll() {
  if (document.body.scrollHeight - 200 <
      document.body.scrollTop + window.innerHeight &&
      this.state.hasMore === true ) {
      this.props.requestBooks(this.state.lastBookId);
  }
}
```


Once the response contains less than 12 books, the event listener is turned off and further requests are
prevented:

```javascript
componentWillReceiveProps(newProps) {
  const newLastBookId = newProps.books.length;
  let newHasMore = true;
  if (newLastBookId % 12 !== 0) {
    newHasMore = false;
  }
  this.setState( {lastBookId: newLastBookId, hasMore: newHasMore });
}
```

### Dynamic Search

## Features Implementation
While the current features are complete, there are still many more possible additions:
### Advanced Search
Add additional search refinement (currently only though title and author).

### User Profiles
Allow users to upload a profile picture and share bookshelves with other users.

[heroku-link]: http//neatnovels.herokuapp.com
