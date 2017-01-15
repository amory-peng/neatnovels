export const fetchComments = bookId => (
  $.ajax({
    method: 'GET',
    url: `/api/books/${bookId}/comments`
  })
);

export const createComment = (bookId, comment) => (
  $.ajax({
    method: 'POST',
    url: `/api/books/${bookId}/comments`,
    data: { comment }
  })
);
