import React from 'react';
import { Link } from 'react-router';
import Header from './greeting/header';
import Footer from './greeting/footer';

const App = (props) => (
  <div>
    <Header location={props.location} />
    <div className="body">
      { props.children }
    </div>
    <Footer location={props.location} />
  </div>
);

export default App;
