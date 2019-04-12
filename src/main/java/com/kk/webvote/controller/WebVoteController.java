package com.kk.webvote.controller;

import com.kk.webvote.entity.User;
import com.kk.webvote.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class WebVoteController {

    @Autowired
    UserService userService;

    @RequestMapping(value="/hello")
    // 这里返回值类型为String,则是直接跳转导templates下的页面
    public String hello() {
        User user = new User();
        user.setName("马强");
        user.setGender("男");
        user.setId(3);
        user.setAge("23");
        userService.addUser(user);
        return "login";
    }

}
