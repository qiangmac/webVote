package com.kk.webvote.dao;

import com.kk.webvote.entity.User;
import org.springframework.stereotype.Component;

import java.util.List;

/*
* 同名的Mapper.java文件需要存在一个同名的.xml文件
*
* */
@Component
public interface UserMapper {

    public User selectUser();

    public void addUser(User user);

    public List<User> getAllUser();

}
