import "./Navbar.css";
import { Link } from "react-router-dom";

function Navbar(){

    return (
        <div className="navbar">
            <h3 className="jerichoname">JERICHO</h3>
            <div className ="LinksNav" >
            <Link className="DecNet" to = {"/"}>DECISION NETWORK</Link>
            <Link className="propos" to={"/Propositions"}> Proposal</Link>
        </div>
            <h3 className="name-link">NAMEPLACEHOLDER</h3>
        </div>
    )
}

export default Navbar;