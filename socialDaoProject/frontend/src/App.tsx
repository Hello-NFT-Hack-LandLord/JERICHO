import React from 'react';
import './App.css';
import { Routes, Route } from "react-router-dom";
import Navbar from "./components/Navbar/Navbar";
import HomePage from './Pages/HomePage/HomePage';
import Propositions from './Pages/PropositionsPage/PropositionsPage';
import CreatePost from "./Pages/CreatePostPage/CreatePost"
import CreatePropousal from "./Pages/CreatePropousalPage/CreatePropousal"
function App() {
  return (
    <div className="App">
      <Navbar/>
      <Routes>
      <Route path="/" element={<HomePage />} />
      <Route path="/Propositions" element={<Propositions/>} />
      <Route path="/CreatePost" element={<CreatePost/>}/>
      <Route path="/CreatePropousal" element={<CreatePropousal/>}/>
      </Routes>
    </div>
  );
}

export default App;
