import GreetingContainer from './greeting_container';
import React from 'react';
import { Link } from 'react-router';
import SearchBarContainer from '../search/search_bar_container.js';
const Header = (props) => {

  return (
  <div className="header">
    <Link to="/books">
      <h1>
        neat<span>novels</span>
      </h1>
    </Link>
    <SearchBarContainer location={location}/>
    <GreetingContainer location={props.location}/>
  </div>
);};

export default Header;
