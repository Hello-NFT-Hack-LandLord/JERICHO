import React from 'react'
import "./PropositionsPage.css"
import Prepositions from "../../components/Prepositions/Prepositions"
import { Link } from "react-router-dom";

function Propositions() {
  return (
    <div className = "PropositionsPage">
        <Prepositions />
        <div className='float-btn'>
            <Link to ="/CreatePropousal"> <button className = "float-btn2">+</button> </Link>
        </div>
    </div>
  )
}

export default Propositions