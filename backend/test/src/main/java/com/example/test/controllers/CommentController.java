/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.test.controllers;

import com.example.test.models.Comment;
import com.example.test.services.ICommentService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author PC
 */
@RestController
@RequestMapping
@CrossOrigin(origins = {"http://localhost:3000"})
public class CommentController {
    
    @Autowired
    private ICommentService service;
    
      @GetMapping("/comments")
    public List<Comment> getAll(){
        return service.findAll();
    }
    
    @PostMapping("comment")
    public Comment addComment(@RequestBody Comment comment){
        return service.save(comment);
    }
    
    @DeleteMapping("comment/{id}")
    public void addComment(@PathVariable Integer id){
        service.deleteById(id);
    }
}
