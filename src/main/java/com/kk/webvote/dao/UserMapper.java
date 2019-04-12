package com.kk.webvote.dao;

import com.kk.webvote.entity.User;
import org.springframework.stereotype.Component;

@Component
public interface UserMapper {

    public User selectUser();

    public void addUser(User user);

}
