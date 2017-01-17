import { connect } from 'react-redux';
import { requestBooks, searchBooks } from '../../actions/book_actions.js';
import SearchBar from './search_bar';

const mapStateToProps = ({ books }) => {
  const bookIds = Object.keys(books.queriedBooks).sort((a,b) => a - b);
  const bookList = bookIds.map( id => books.queriedBooks[id]);
  return ({ queriedBooks: bookList });
};

const mapDispatchToProps = () => dispatch => ({
  searchBooks: (query) => dispatch(searchBooks(query)),
  requestBooks: () => dispatch(requestBooks(0))
});

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar);
