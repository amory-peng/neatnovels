# Neat Novels

[Heroku link][heroku]

[Trello link][trello]

[heroku]:
[trello]: https://trello.com/b/W3HvJUJo/fsp-goodreads

## Minimum Viable Product

NeatNovels is a web application inspired by Goodreads built using Ruby on Rails
and React/Redux. By the end of Week 9, this app will, at a minimum, satisfy the
following criteria with smooth, bug-free navigation, adequate seed data and
sufficient CSS styling:

- [ ] Hosting on Heroku
- [ ] New account creation, login, and guest/demo login
- [ ] Books
- [ ] Bookshelves
- [ ] Reviews
- [ ] Read Status(want to read, currently reading, finished reading)
- [ ] Production README

## Design Docs
* [View Wireframes][wireframes]
* [React Components][components]
* [API endpoints][api-endpoints]
* [DB schema][schema]
* [Sample State][sample-state]

[wireframes]: docs/wireframes
[components]: docs/component-hierarchy.md
[sample-state]: docs/sample-state.md
[api-endpoints]: docs/api-endpoints.md
[schema]: docs/schema.md

## Implementation Timeline

### Phase 1: Backend setup and Front End User Authentication (2 days w8d3)

**Objective:** Functioning rails project with front-end Authentication
1. New `Rails` project
  1. `User` model(`username`, `password_digest`, `session_token`)
  2. Rails auth (user/session controller)
  3. `StaticPages` controller/view
2. Front-end
  1. `SessionForm` component for signup/signin
  2. Welcome page after successful signup/signin
  3. User/session creation error handling
3. Styling
4. Seed Users db

### Phase 2: Books Model, API, and components (2 days w8d5)

**Objective:** Books can be created, read, edited and destroyed through
the API.
1. `Book` model + seed data
2. `Books` controller (CRUD)
3. Jbuilder views
4. Components
  1. BooksIndex
  2. BookDetail
5. Styling

### Phase 3: Bookshelves (2 days w9d2)

**Objective:** Books belong to Bookshelves that can be created, read, edited and destroyed through the API.
1. `Bookshelf` model
2. `Bookshelves` controller (CRUD)
3. JBuilder views
4. Components
  1. ShelfIndex
  2. ShelfDetail
  3. Add/Remove Shelf
5. Styling

### Phase 4: Reviews (2 day w9d4)

**Objective:** Users can add reviews to Books, CRUD through API
1. `Review` model (`user_id`, `title`, `body`, `book_id`) + seed
2. `Reviews` controller (CRUD)
3. JBuilder views
4. Components
  1. ReviewIndex
  2. ReviewIndexItem
  3. ReviewForm
5. Styling

### Phase 5: Navbar with Search (1 day w9d5)

**objective:** Users can search for books and navigate site through navbar
1. Navbar component
  1. Search Component in navbar
  2. links to ShelfIndex and BookIndex


### Bonus Features (TBD)
- [ ] infinite scrolling
- [ ] users profile
- [ ] recommendations/sort by category
- [ ] create books/integrate googlebooks api
- [ ] multiple sessions
