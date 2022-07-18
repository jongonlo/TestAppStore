/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.test.services;

import com.example.test.dao.ICommentDao;
import com.example.test.models.Comment;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author PC
 */
@Service
public class CommentService implements ICommentService{

    @Autowired
    private ICommentDao dao;
    
    @Override
    public List<Comment> findAll() {
        return (List<Comment>) dao.findAll();
    }

    @Override
    public Comment findById(Integer id) {
        return dao.findById(id).orElse(null);
    }

    @Override
    public void deleteById(Integer id) {
        dao.deleteById(id);
    }

    @Override
    public Comment save(Comment obj) {
       return dao.save(obj);
    }
    
}
