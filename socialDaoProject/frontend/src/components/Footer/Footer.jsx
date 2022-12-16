import React from 'react'
import "./Footer.css";
import { Link } from "react-router-dom";

const  Footer = () => {
  return (
    <div className ="Footer">
       <h1 className="footername">JERICHO</h1> 
       <Link className="AboutUs" to={"/AboutUs"}> ABOUT US</Link>
    </div>
  )
}

export default Footer