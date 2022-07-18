/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.test.services;

import com.example.test.models.Category;
import java.util.List;

/**
 *
 * @author PC
 */
public interface ICategoryService {
    
    public List<Category> findAll();
    public Category findById(Integer id);
    public void deleteById(Integer id);
    public Category save(Category obj);
}
