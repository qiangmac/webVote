package com.kk.webvote.service;

import com.kk.webvote.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;


public interface UserService {

    public void addUser(User user);

    public List<User> getAllUser(User user);

}
