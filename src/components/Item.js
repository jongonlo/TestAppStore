import React from 'react';
import { Star } from './Star';
import './Item.css'

export const Item = (props) => {
    return (
        <div className="card pt-2 ps-2 pe-2">
            <a data-bs-toggle="modal" data-bs-target="#exampleModal" onClick={event => props.showModal(props.item)}>
                <img
                    src={require('../assets/img/app-icons/'+props.item.coverImg+'.webp')}
                    className="card-img-top"
                    alt="..."
                />
                <div>
                    <h5 className="card-title mb-0">{props.item.name}</h5>
                    <p className="card-text">{props.item.developer}</p>
                    <span>
                        <Star total={props.item.rating} />
                    </span>
                    <h5 className="card-title">{props.item.price<0.5?'FREE':'$'+props.item.price}</h5>
                </div>
            </a>
        </div>
    );
};
