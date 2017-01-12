export const fetchBooks = (lastId) => {
  console.log(lastId);
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
