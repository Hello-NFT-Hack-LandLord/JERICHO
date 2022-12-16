import React from 'react'
import "./CreatePropousal.css"
import { Link } from "react-router-dom";

function CreatePropousal() {
  return (
    <div className="CreateProposal">
        <div className="BoxProposal">
        <label for="w3review" className = "CreateProposalL">Create Proposal:</label>
        <textarea id="w3review" name="w3review" rows="4" cols="50"> </textarea>
            <div class="wrapsote">
            <div class="wrap">
  <button class="button">Dick</button>
        </div>
        <div class="wrap">
  <button class="button">Dick</button>
        </div>
    </div>
    </div>
    </div>
  )
}

export default CreatePropousal