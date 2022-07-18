/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.test.controllers;

import com.example.test.models.Category;
import com.example.test.services.ICategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author PC
 */
@RestController
@RequestMapping
@CrossOrigin(origins = {"http://localhost:3000"})
public class CategoryController {
    
    @Autowired
    private ICategoryService service;
    
    @GetMapping("/categories")
    public List<Category> getAll(){
        return service.findAll();
    }
    
}
