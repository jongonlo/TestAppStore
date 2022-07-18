/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.test.controllers;

import com.example.test.models.Item;
import com.example.test.services.ItemService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author PC
 */
@RestController
@RequestMapping
@CrossOrigin(origins = {"http://localhost:3000"})
public class ItemController {

    @Autowired
    private ItemService service;

    @GetMapping("/items")
    public List<Item> getAll() {
        return service.findAll();
    }
    
    @GetMapping("/items/{categoryId}")
    public List<Item> getByCategory(@PathVariable Integer categoryId) {
        return service.findByCategoryId(categoryId);
    }
    
    @PatchMapping("item/install/{id}")
    public Item installApp(@PathVariable Integer id){
        Item item = service.findById(id);
        item.setInstalled(true);
        return service.save(item);
    }
    
    @DeleteMapping("item/remove/{id}")
    public void removeApp(@PathVariable Integer id){
        service.deleteById(id);
    }
}
