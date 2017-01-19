import { connect } from 'react-redux';
import { requestBooks } from '../../actions/book_actions';
import { searchBooks,
         clearQueriedBooks } from '../../actions/search_actions';
import SearchBar from './search_bar';

const mapStateToProps = ({ search }, ownProps) => {
  const bookIds = Object.keys(search.queriedBooks).sort((a,b) => a - b);
  const bookList = bookIds.map( id => search.queriedBooks[id]);
  return ({
    queriedBooks: bookList,
    location: ownProps.location,
    query: search.query });
};

const mapDispatchToProps = () => dispatch => ({
  searchBooks: (query) => dispatch(searchBooks(query)),
  requestBooks: () => dispatch(requestBooks(0)),
  clearQueriedBooks: () => dispatch(clearQueriedBooks())
});

export default connect(mapStateToProps, mapDispatchToProps)(SearchBar);
