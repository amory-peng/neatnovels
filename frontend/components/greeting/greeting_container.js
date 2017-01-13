import Greeting from './greeting';
import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { removeBookshelves } from '../../actions/bookshelf_actions';

const mapStateToProps = ({ session }, ownProps) => ({
  currentUser: session.currentUser,
  loggedIn: Boolean(session.currentUser),
  location: ownProps.location

});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  removeBookshelves: () => dispatch(removeBookshelves())
});

export default connect(mapStateToProps, mapDispatchToProps)(Greeting);
