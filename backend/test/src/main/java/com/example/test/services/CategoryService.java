/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.test.services;

import com.example.test.dao.ICategoryDao;
import com.example.test.models.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class CategoryService implements ICategoryService {

    @Autowired
    private ICategoryDao dao;

    @Override
    public List<Category> findAll() {
        return (List<Category>) dao.findAll();
    }

    @Override
    public Category findById(Integer id) {
        return dao.findById(id).orElse(null);
    }

    @Override
    public void deleteById(Integer id) {
        dao.deleteById(id);
    }

    @Override
    public Category save(Category obj) {
        return dao.save(obj);
    }

}
