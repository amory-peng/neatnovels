import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import { Link, withRouter } from 'react-router';


const App = (props) => (
  <div>
    <div className="header">
      <Link to="/">
        <h1>
          neat<span>novels</span>
        </h1>
      </Link>

      <GreetingContainer />
    </div>

    <div className="body">
      { props.children }
    </div>

  </div>
);

export default App;
