import React from 'react';
import logo from '../assets/img/logo.png';

export const NavBar = () => {
    return (
        <div>
            <nav className="navbar navbar-dark bg-dark">
                <div className="container-fluid">
                    <img src={logo} alt="Logo" />
                    <form className="d-flex" role="search">
                        <input
                            className="form-control me-2"
                            type="search"
                            placeholder="Search"
                            aria-label="Search"
                        />
                        <button className="btn btn-warning" type="submit">
                            <i className="bi bi-search"></i>
                        </button>
                    </form>
                </div>
            </nav>
        </div>
    );
};
