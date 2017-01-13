export const createShelving = ( bookshelfId, bookId ) => (
  $.ajax({
    method: 'POST',
    url: `api/bookshelves/${bookshelfId}/books/${bookId}`,
  })
);

export const deleteShelving = (bookshelfId, bookId) => (
  $.ajax({
    method: 'DELETE',
    url: `api/bookshelves/${bookshelfId}/books/${bookId}`
  })
);

export const deleteShelvings = ( bookId ) => (
  $.ajax({
    method: 'DELETE',
    url: `api/books/${bookId}/bookshelves`,
  })
);
