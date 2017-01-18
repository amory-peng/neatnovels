export const fetchBooks = (lastId) => {
  return (
    $.ajax({
      method: 'GET',
      url: 'api/books',
      data: { lastId }
    })
  );
};

export const fetchBook = id => (
  $.ajax({
    method: 'GET',
    url: `api/books/${id}`
  })
);

export const searchBooks = query => {
  return $.ajax({
    method: 'GET',
    url: `api/search/books/${query}`
  });
};
