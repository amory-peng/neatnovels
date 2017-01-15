import React from 'react';
import { Link, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { username: "", password: "", hasErrors: false };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
  }

  componentDidUpdate() {
    this.redirectIfLoggedIn();
  }

  redirectIfLoggedIn() {
    if (this.props.loggedIn) {
      this.props.router.push('/books');
    }
  }

  componentWillUnmount() {
    this.props.removeErrors();
  }

  componentWillReceiveProps(newProps) {
    if (this.props.formType !== newProps.formType) {
      this.setState({username: "", password: ""}, ()=>this.props.removeErrors());
    }
  }

  handleSubmit(e) {
    e.preventDefault();
    const newCurrentUser = Object.assign(this.state);
    this.props.processForm(newCurrentUser);

  }

  handleDemo(e) {
    e.preventDefault();
    const demoUser = {username: 'jimbo', password: 'password'};
    this.props.login(demoUser);
  }

  update(key) {
    return (e) => this.setState({ [key]: e.currentTarget.value });
  }

  render() {
    let text;
    let buttonText;
    let errorText;

    if (this.props.formType === "login") {
      text = <h3>
        Not a user?&nbsp;
        <Link to="/signup" className="link">Sign up</Link>
        &nbsp;or&nbsp;
        <span className="link" onClick={this.handleDemo}>demo</span>.
      </h3>;
      buttonText="Login";
    } else {
      text = <h3>Already a user? <Link to="/login" className="link">Sign in</Link>
        &nbsp;or&nbsp;
        <span className="link" onClick={this.handleDemo}>demo</span>.
        </h3>;
      buttonText="Sign up";
    }

    if (this.props.errors) {
      errorText = this.props.errors.map((error, idx) => (
        <li key={idx}>{error}.</li>
      ));
    }

    return(
      <div className="session-main-container">
        <div className="session-form-container">
          <h2>Welcome.</h2>
          <form className="session-form" onSubmit={this.handleSubmit}>
            <input type="text"
              onChange={this.update('username')}
              placeholder="Username"
              value={this.state.username} />

            <input type="password"
              onChange={this.update('password')}
              placeholder="Password"
              value={this.state.password} />

            <input type="submit" className="button" value={buttonText}/>
            { text }
          </form>
          <ul className="session-errors">{errorText}</ul>
        </div>
      </div>
    );
  }
}

export default SessionForm;
