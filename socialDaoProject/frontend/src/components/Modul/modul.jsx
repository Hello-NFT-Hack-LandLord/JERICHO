import React from 'react';
import Popup from 'reactjs-popup';
import 'reactjs-popup/dist/index.css';
import './modul.css';

const Modal_comment = () => (
  <Popup
    trigger={<button className="button"> comments</button>}
    modal
    nested
  >
    {close => (
      <div className="modal">
        <button className="close" onClick={close}>
          &times;
        </button>
        <div className="header"> MODAL MODAL MODAL </div>
        <div className="content">
          {' '}
          AQUI VAN LOS PINCHES COMMENTARIOS AL A VERGA NOMAMEEEEES
        </div>
        <div className="actions">
          <input type="text" className='inputcomment' />
          <button className="inputcomment_enviar"> Send comment </button>
          
        </div>
      </div>
    )}
  </Popup>
);

export default Modal_comment;