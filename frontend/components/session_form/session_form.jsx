import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { username: "", password: "" };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }

  redirectIfLoggedIn() {
    if (this.props.loggedIn) {
      this.props.router.push('/');
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const newCurrentUser = Object.assign(this.state);
    this.props.processForm(newCurrentUser);

  }

  update(key) {
    return (e) => this.setState({ [key]: e.currentTarget.value });
  }

  render() {
    return(
      <div className="session-form-container">
        <h2>Welcome to NeatNovels</h2>
        <form className="session-form" onSubmit={this.handleSubmit}>
          <input type="text"
            onChange={this.update('username')}
            placeholder="username"
            value={this.state.username} />

          <input type="text"
            onChange={this.update('password')}
            placeholder="password"
            value={this.state.password} />

          <input type="submit" value={this.props.formType}/>
        </form>
      </div>
    );
  }
}

export default SessionForm;
