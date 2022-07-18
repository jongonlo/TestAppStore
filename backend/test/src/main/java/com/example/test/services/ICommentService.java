/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.test.services;

import com.example.test.models.Comment;
import java.util.List;

/**
 *
 * @author PC
 */
public interface ICommentService {
    
    public List<Comment> findAll();
    public Comment findById(Integer id);
    public void deleteById(Integer id);
    public Comment save(Comment obj);
}
