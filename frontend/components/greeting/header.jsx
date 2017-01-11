import GreetingContainer from './greeting_container';
import React from 'react';
import { Link } from 'react-router';

const Header = () => (
  <div className="header">
    <Link to="/books">
      <h1>
        neat<span>novels</span>
    </h1>
  </Link>

  <GreetingContainer />
</div>
);

export default Header;
