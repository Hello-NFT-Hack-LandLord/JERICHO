import React from 'react'
import "./CreatePropousal.css"
import { Link } from "react-router-dom";

function CreatePropousal() {
  return (
    <div className="CreateProposal">
        <div className="BoxProposal">
        <label for="w3review" className = "CreateProposalL">Create Proposal:</label>
        <textarea id="w3review" name="w3review" rows="4" cols="50"> </textarea>
            <div>
            <button>Create</button>
            <Link to = "/CreatePost"><button>Post</button></Link>
            </div>
        </div>
    </div>
  )
}

export default CreatePropousal