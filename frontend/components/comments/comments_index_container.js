import { connect } from 'react-redux';
import { requestComments, clearComments } from '../../actions/comment_actions';
import CommentsIndex from './comments_index';

const mapStateToProps = ({ comments }, ownProps) => ({
  comments: comments.comments.slice(0,5),
  bookId: ownProps.bookId
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestComments: () => dispatch(requestComments(ownProps.bookId)),
  clearComments: () => dispatch(clearComments())
});

export default connect(mapStateToProps, mapDispatchToProps)(CommentsIndex);
