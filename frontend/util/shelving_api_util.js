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
    url: `api/books/${bookId}/shelvings/${bookshelfId}`,
  })
);
