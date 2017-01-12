export const requestBookshelves = () => (
  $.ajax({
    method: 'GET',
    url: 'api/bookshelves'
  })
);

export const requestBookshelf = id => (
  $.ajax({
    method: 'GET',
    url: `api/bookshelves/${id}`
  })
);

export const createBookshelf = shelf => (
  $.ajax({
    method: 'POST',
    url: 'api/bookshelves',
    data: { shelf }
  })
);

export const updateBookshelf = shelf => (
  $.ajax({
    method: 'PATCH',
    url: `api/bookshelves/${shelf.id}`,
    data: { shelf }
  })
);

export const deleteBookshelf = id => (
  $.ajax({
    method: 'DELETE',
    url: `api/bookshelves/${id}`
  })
);
