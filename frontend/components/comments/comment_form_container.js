import { connect } from 'react-redux';
import { createComment, clearErrors } from '../../actions/comment_actions';
import CommentForm from './comment_form';

const mapStateToProps = ({ comments }) => ({
  errors: comments.errors,
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  createComment: (comment) => dispatch(createComment(ownProps.bookId, comment)),
  clearErrors: () => dispatch(clearErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(CommentForm);
