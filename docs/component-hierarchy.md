## Component Hierarchy

**AuthFormContainer**
 - AuthForm

**HomeContainer**
 - Navbar
  + Search
 - Main

**MainContainer**
 - BookshelvesIndexContainer
 - BooksIndexContainer

**BooksIndexContainer**
 - BookIndexItem

**BookDetailContainer**
  - BookDetail
  - AddToShelfButton
  - ReviewsIndex
  + ReviewForm
  + ReviewDetail

**BookshelvesIndexContainer**
 - BookshelvesIndex
  + BookshelfIndexItem
 - Add/Remove shelf

**BookshelfDetailContainer**
 - BookshelfDetail

**SearchContainer**
 - Search
 - BooksIndex

## Routes

|Path   | Component   |
|-------|-------------|
| "/sign-up" | "AuthFormContainer" |
| "/sign-in" | "AuthFormContainer" |
| "/home" | "HomeContainer" |
| "/home/main | "MainContainer" |
| "/home/books" | "BooksIndexContainer" |
| "/home/books/:id" | "BookDetailContainer" |
| "/home/bookshelves" | "BookshelvesIndexContainer" |
| "/home/bookshelves/:id" | "BookshelvesDetailContainer" |
| "/search" | "SearchContainer" |
