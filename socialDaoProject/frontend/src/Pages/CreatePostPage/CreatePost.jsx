import React from 'react'
import "./CreatePost.css"
import { Link } from "react-router-dom";

function CreatePost() {
  return (
    
    <div className="CreatePost">
        <div className="BoxPost">
        <label for="w3review" className = "CreatePostL">Create Post:</label>
        <textarea id="w3review" name="w3review" rows="4" cols="50"> </textarea>
        <div class="wrap">
  <button class="button">Dick</button>
</div>
<div class="wrap">
  <button class="button">Dick</button>
</div>
    </div>
    </div>
  )
}

export default CreatePost