package com.kk.webvote.service.impl;

import com.kk.webvote.dao.UserMapper;
import com.kk.webvote.entity.User;
import com.kk.webvote.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/*
* 提供给外部调用的方法通过接口(Interface)暴露给调用方,这里就是UserService
* */
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
    public List<User> getAllUser(User user) {
        if (CollectionUtils.isEmpty(userMapper.getAllUser(user))) {
            return new ArrayList<User>();
        }
        return userMapper.getAllUser(user);
    }

    @Override
    public User validateLoginUser (String loginId, String password) {
        User loginUser = new User();
        loginUser.setLoginId(loginId);
        loginUser.setPassword(password);
        return userMapper.validateLoginUser(loginUser);
    }
}
