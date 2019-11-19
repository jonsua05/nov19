package com.websystique.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystique.springmvc.model.User1;
import com.websystique.springmvc.dao.UserDao1;

@Service
public class UserServiceImp1 implements UserService1 {

   @Autowired
   private UserDao1 userDao;

   @Transactional
   public void save(User1 user) {
      userDao.save(user);
   }

   @Transactional(readOnly = true)
   public List<User1> list() {
      return userDao.list();
   }

}
