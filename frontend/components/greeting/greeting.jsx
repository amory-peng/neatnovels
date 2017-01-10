import React from 'react';
import { Link } from 'react-router';

const Greeting = (props) => {
  let text;
  if (!props.currentUser) {
    text = (
      <div id="greeting-container">
        <Link to="/login" className="button">Sign in</Link>
        <Link to="/signup" className="button">Sign up</Link>
      </div>
    );
  } else {
    text = (
      <div id="greeting-container">
        <h2>Welcome, {props.currentUser.username}.</h2>
        <button className="button" onClick={props.logout}>Log out</button>
      </div>
    );
  }

  return(
    <div>
      { text }
    </div>
  );
};

export default Greeting;
