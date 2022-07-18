/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.test.services;

import com.example.test.models.Item;
import java.util.List;

/**
 *
 * @author PC
 */
public interface IItemService {
   
    public List<Item> findAll();
    public Item findById(Integer id);
    public void deleteById(Integer id);
    public Item save(Item obj);
    public List<Item> findByCategoryId(Integer id);
}
