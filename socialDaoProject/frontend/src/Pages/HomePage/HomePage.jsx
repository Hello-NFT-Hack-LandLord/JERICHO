import React from 'react'
import "./HomePage.css"
import Post from '../../components/POST/Post'
import { Link } from "react-router-dom";

function HomePage() {
  return (
    <div className="HomePage">
            <Post/>
            
            
            <div className='float-btn'>
             <Link to ="/CreatePost"> <button className = "float-btn1">+</button> </Link>
            </div>
    </div>
  )
}

export default HomePage