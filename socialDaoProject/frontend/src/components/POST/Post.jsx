import "./post.css"
import Comment from "../Comments/Comments"
import Modal_comment from "../Modul/modul";
const Post = () => {
  return (
    <div className = "Cardpost">
        <p className="wallet-name-card">VARPost</p>
        <h1 className="comment-card">VARcomentarios</h1>
        <Modal_comment/>
</div>
  )
}

export default Post