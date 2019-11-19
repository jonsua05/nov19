package com.websystique.springmvc.dao;

import java.util.List;

import com.websystique.springmvc.model.User1;

public interface UserDao1 {
   void save(User1 user);
   List<User1> list();
}
