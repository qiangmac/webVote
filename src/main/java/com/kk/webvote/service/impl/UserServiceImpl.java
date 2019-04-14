package com.kk.webvote.service.impl;

import com.kk.webvote.dao.UserMapper;
import com.kk.webvote.entity.User;
import com.kk.webvote.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public List<User> getAllUser() {
        if (CollectionUtils.isEmpty(userMapper.getAllUser())) {
            return new ArrayList<User>();
        }
        return userMapper.getAllUser();
    }
}
