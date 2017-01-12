import GreetingContainer from './greeting_container';
import React from 'react';
import { Link } from 'react-router';

const Header = (props) => {

  return (
  <div className="header">
    <Link to="/books">
      <h1>
        neat<span>novels</span>
      </h1>
    </Link>
    <GreetingContainer location={props.location}/>
  </div>
);};

export default Header;
