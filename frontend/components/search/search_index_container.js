import { connect } from 'react-redux';
import { clearQueriedBooks, searchBooks } from '../../actions/search_actions';
import SearchIndex from './search_index';

const mapStateToProps = ({ search }, ownProps) => {
  const bookIds = Object.keys(search.queriedBooks).sort((a,b) => a - b);
  const bookList = bookIds.map(id => search.queriedBooks[id]);
  return ({ books: bookList,
            querying: search.querying,
            location: ownProps.location
          });
};

const mapDispatchToProps = dispatch => ({
  clearQueriedBooks: () => dispatch(clearQueriedBooks()),
  searchBooks: (query) => dispatch(searchBooks(query)),
});

export default connect(mapStateToProps, mapDispatchToProps)(SearchIndex);
