/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.test.services;

import com.example.test.dao.IItemDao;
import com.example.test.models.Item;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class ItemService implements IItemService {

    @Autowired
    private IItemDao dao;

    @Override
    public List<Item> findAll() {
        return (List<Item>) dao.findAll();
    }

    @Override
    public Item findById(Integer id) {
        return dao.findById(id).orElse(null);
    }

    @Override
    public void deleteById(Integer id) {
        dao.deleteById(id);
    }

    @Override
    public Item save(Item obj) {
        return dao.save(obj);
    }

    @Override
    public List<Item> findByCategoryId(Integer id) {
        return dao.findByCategoryId(id);
    }

}
