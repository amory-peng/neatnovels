export const createShelving = ( name, bookId ) => (
  $.ajax({
    method: 'POST',
    url: `api/books/${bookId}/shelvings`,
    data: { bookshelf: { name }}
  })
);

export const deleteShelving = (bookshelfId, bookId) => (
  $.ajax({
    method: 'DELETE',
    url: `api/books/${bookId}/shelvings/_`,
    data: { bookshelf: { id: bookshelfId } }
  })
);

export const deleteShelvings = ( bookId ) => (
  $.ajax({
    method: 'DELETE',
    url: `api/books/${bookId}/shelvings/_`,
    data: { bookshelf: { action: 'ALL' }}
  })
);
