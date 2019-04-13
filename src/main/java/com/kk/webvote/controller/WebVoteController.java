package com.kk.webvote.controller;

import com.kk.webvote.entity.User;
import com.kk.webvote.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WebVoteController {

    @Autowired
    UserService userService;

    @RequestMapping(value="/hello")
    // 这里返回值类型为String,则是直接跳转导templates下的页面
    public String hello(Model model) {
        User user = new User();
        user.setName("马强");
        user.setGender("男");
        user.setId(3);
        user.setAge("23");
        userService.addUser(user);
        model.addAttribute("hello", "你好");
        return "index";
    }

}
