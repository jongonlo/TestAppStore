import React from 'react';
import { Comment } from './Comment';
import './Modal.css';
import { Star } from './Star';

export const Modal = (props) => {
    const hideModal = () => document.getElementById("modal").style.display = "none";
  
    return (
        <div id="modal" className="modal">
            <div className="modal-dialog">
                <div className="modal-content">
                    <div className="modal-header">
                        <img src={props.item?.profileImg!=undefined?require('../assets/img/app-screenshots/'+props.item.profileImg+'.webp'):null} className='img-fluid' alt='cover'/>
                    </div>
                    <div className="modal-body">
                        <div className="row">
                            <div className="col-md-4">
                                <img src={props.item?.coverImg!=undefined?require('../assets/img/app-icons/'+props.item.coverImg+'.webp'):null} className='img-fluid' alt='profile'/>
                            </div>
                            <div className="col-md-8">
                                <h5 className="modal-title">{props.item?.name}</h5>
                                <p>{props.item.description}</p>
                                <h5 className="modal-title mb-4">${props.item?.price}</h5>
                            </div>
                        </div>
                        <div className="row border-top pt-3">
                            <div className="col-md-8 offset-md-4 d-flex">
                                <Star total={props.item?.rating!=undefined?props.item.rating:0} />
                                <span className="ms-2">2</span>
                            </div>
                        </div>
                        <div className='pt-3'>
                        {props.item?.comments!=undefined?props.item.comments.map((comment) => {
                            return <Comment comment={comment}/>
                        }):null}
                        </div>
                    </div>

                    <div className="modal-footer">
                        <button
                            type="button"
                            className="btn btn-secondary"
                            data-bs-dismiss="modal"
                            onClick={hideModal}
                        >
                            Cerrar
                        </button>
                        { !props.item?.installed?
                        <a type="button" className="btn btn-primary" onClick={() => {props.installApp(props.item?.id); hideModal()}}>
                            Instalar
                        </a>:null
                        }
                        <a type='button' className="btn btn-danger" onClick={ () =>{props.removeItem(props.item?.id); hideModal()} }>
                            Eliminar
                        </a>
                    </div>
                </div>
            </div>
        </div>

    );
};
