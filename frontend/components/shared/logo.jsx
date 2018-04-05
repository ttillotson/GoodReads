import React from 'react';
import { Link } from 'react-router-dom';

export default () => (
  <Link to='/home' id='logo'>
    <h1>
      <span id='logo_tiptop'>tiptop</span>
      <span id='logo_tomes'>tomes</span>
    </h1>
  </Link>
);
