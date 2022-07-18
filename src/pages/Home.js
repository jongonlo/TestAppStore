import React, { useEffect, useState } from 'react';
import { Dropdown } from '../components/Dropdown';
import { Item } from '../components/Item';
import { Modal } from '../components/Modal';
import { NavBar } from '../components/NavBar';
import './Home.css';

export default function Home() {
    const [categories, setCategories] = useState([]);
    const [items, setItems] = useState([]);
    const [item, setItem] = useState({});
    const baseUrl = 'http://localhost:8080';
    useEffect(() => {
        fetch(baseUrl + '/categories')
            .then((res) => res.json())
            .then((repos) => {
                setCategories(repos);
            });
        refreshItem();
    }, []);

    const onSelect = (categoryId) => {
        console.log('onSelect', categoryId);
        if (categoryId !== undefined) {
            fetch(baseUrl + '/items/' + categoryId)
                .then((res) => res.json())
                .then((repos) => {
                    setItems(repos);
                });
        }
        if (categoryId == 0) {
            refreshItem();
        }
    };

    const showModal = (value) => {
      console.log(value)
        setItem(value);
        document.getElementById('modal').style.display = 'block';
    };

    const refreshItem = () => {
      setItems([])
        fetch(baseUrl + '/items')
            .then((res) => res.json())
            .then((repos) => {
                setItems(repos);
            });
    };

    const removeItem = (id) => {
        if (id != undefined) {
            fetch(baseUrl + '/item/remove/' + id, {method:'DELETE'});
            setItems(items.filter(e => e.id!=id));
        }
    };

    const installApp = (id) => {
        if (id != undefined) {
            fetch(baseUrl + '/item/install/' + id, {method:'PATCH'}).then((res) => res.json());
            refreshItem();
        }
    };

    return (
        <div>
            <NavBar />
            <div className="container mt-2">
                <Dropdown
                    values={categories}
                    title={'Categoria'}
                    onSelect={onSelect}
                />
                <div className="row">
                    {items.map((item) => {
                        return (
                            <div className="col-lg-2 col-md-3 col-6 mt-2">
                                <Item item={item} showModal={showModal} />
                            </div>
                        );
                    })}
                </div>
            </div>
            <Modal
                item={item}
                installApp={installApp}
                removeItem={removeItem}
            />
        </div>
    );
}
