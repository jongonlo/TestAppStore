import React from 'react';

export const Dropdown = (props) => {

    return (
        <div>
            <select
                className="form-select form-select-lg mb-3"
                aria-label=".form-select-lg example"
                onChange={(e)=>props.onSelect(e.target.value)}
            >
                <option value={0}>{ props.title }</option>
                {props.values.map((value) => {
                    return <option value={value.id} key={value.id}>{value.name}</option>
                })}
            </select>
        </div>
    );
};
