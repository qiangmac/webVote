package com.kk.webvote.service.impl;

import com.kk.webvote.dao.UserMapper;
import com.kk.webvote.entity.User;
import com.kk.webvote.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void addUser(User user) {
        userMapper.addUser(user);
    }
}
