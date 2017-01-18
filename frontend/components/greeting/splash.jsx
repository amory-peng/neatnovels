import React from 'react';
import { Link } from 'react-router';

const Splash = () => (
  <div className="splash-container">
    <div className="splash-links-container">
      <h1>Find your next neat novel.</h1>
      <Link to="/login">Login</Link>
      <Link to="/signup">Sign Up</Link>
    </div>
  </div>
);


export default Splash;
