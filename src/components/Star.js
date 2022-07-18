import React from 'react'

export const Star = (props) => {
  const startWhite = 5 - props.total;
  return (
    <div>
        {         
        [...Array(props.total)].map((i,k) => {return <i key={k} style={{fontSize:'1rem', color: '#fcb118'}} className="bi bi-star-fill"></i>})
        }
        {
        [...Array(startWhite)].map((i,k) => {return <i key={k}  style={{fontSize:'1rem', color: '#fcb118'}} className="bi bi-star"></i>})
        }
    </div>
  )
}