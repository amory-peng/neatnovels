import { connect } from 'react-redux';
import { requestComments } from '../../actions/comment_actions';
import CommentsIndex from './comments_index';

const mapStateToProps = ({ comments }, ownProps) => ({
  comments: comments.comments,
  bookId: ownProps.bookId
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestComments: () => dispatch(requestComments(ownProps.bookId))
});

export default connect(mapStateToProps, mapDispatchToProps)(CommentsIndex);
