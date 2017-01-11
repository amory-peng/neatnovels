import React from 'react';
import { Link, withRouter } from 'react-router';
import Header from './greeting/header';

const App = (props) => (
  <div>
    <Header />
    <div className="body">
      { props.children }
    </div>

  </div>
);

export default App;
