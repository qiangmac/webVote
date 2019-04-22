package com.kk.webvote.dao;

import com.kk.webvote.entity.User;
import org.springframework.stereotype.Component;

import java.util.List;

/*
* 映射器
* 同名的Mapper.java文件需要存在一个同名的.xml文件,文件放于resources/mapper下
* xml文件中namespace属性一定要映射到这个映射器
* */
@Component
public interface UserMapper {

    // 同名xml文件中标签上的id和此映射器中的方法名一一对应
    public User selectUser();

    public void addUser(User user);

    public List<User> getAllUser(User user);

    public User validateLoginUser(User user);

    public boolean saveUser(User user);
}
