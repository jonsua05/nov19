package com.websystique.springmvc.service;

import java.util.List;

import com.websystique.springmvc.model.User1;

public interface UserService1 {
   void save(User1 user);

   List<User1> list();
}
