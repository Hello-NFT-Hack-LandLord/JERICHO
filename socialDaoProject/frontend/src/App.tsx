import React from 'react';
import './App.css';
import { Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar/Navbar";
import HomePage from './Pages/HomePage/HomePage';
import Propositions from './Pages/PropositionsPage/PropositionsPage';
function App() {
  return (
    <div className="App">
      <Navbar/>
      <Routes>
      <Route path="/" element={<HomePage />} />
      <Route path="/Propositions" element={<Propositions/>} />
      
      </Routes>
    </div>
  );
}

export default App;
