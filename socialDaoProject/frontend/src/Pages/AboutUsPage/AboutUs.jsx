import React from 'react'
import { Link } from 'react-router-dom'
import "./AboutUs.css"
import IMG from "../../img/IMG_8579.jpg"
function AboutUs() {
  return (
    <div className='wrapaboutus'>
      <div className='Aboutus1' >
      <h1 className='gusto'>JERICHO</h1>
      <h1 className="mensaje-aboutus">
        We are students from Tec Monterrey, our mission is to prove that de social media is not what you think and we need a change. We made a DAO to prove that social media can be decentralized and more focus on the user security.
      </h1>
     
      </div>
      <div >
        <img className='foto-us' src={IMG} alt={"IMG"}/>
      </div>
    </div>
  )
}

export default AboutUs