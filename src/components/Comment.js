import React from 'react'
import userIcon from '../assets/img/user.webp'

export const Comment = (props) => {

  return (
    <div className='row border-top pt-3'>
        <div className='col-md-2'>
            <img src={userIcon} className='rounded-circle'/>
        </div>
        <div className='col-md-10'>
            <h5>{props.comment.user}</h5>
            <p>{props.comment.description}</p>
        </div>
    </div>
  )
}
