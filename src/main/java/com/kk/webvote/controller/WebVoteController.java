package com.kk.webvote.controller;

import com.google.common.collect.Maps;
import com.kk.webvote.entity.User;
import com.kk.webvote.entity.Vote;
import com.kk.webvote.service.UserService;
import com.kk.webvote.service.VoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class WebVoteController extends BaseController {

    @Autowired
    UserService userService;
    @Autowired
    VoteService voteService;

    @RequestMapping(value="/hello")
    // 这里返回值类型为String,则是直接跳转导templates下的页面
    public String hello(Model model) {
        /*User user = new User();
        user.setName("马强");
        user.setGender("男");
        user.setId(3);
        user.setAge("23");
        userService.addUser(user);*/
        model.addAttribute("hello", "你好");
        return "index";
    }

    /**
     * 页面发送post请求
     * /vote/addVote: vote下的addVote操作
     * 此处是PostMapping,jsp页面使用$.post(url,data,function(data){})方法发送post请求
     * 同理GetMapping可以使用$.get(utl,data,function(data){})方法发送get请求
     * data中的字段只要和Vote可以对应上,spring底层就可以自动将数据封装成Vote参数
     */
    @PostMapping(value="/vote/addVote")
    @ResponseBody
    public Object addVote(Vote vote) {
        /*
        * @ResponseBody注解可以将Map自动转为json格式字符串
        * 所以这里将创建投票的结果封装成Map返回给前端
        * 前端处理返回结果:
        * $.post(url,{
        *       id: id,
        *       title: title
        *   },
        *   function(result){
        *       if (result.isSuccess) {
        *           alert(result.message);
        *       } else {
        *           alert(result.message);
        *       }
        * })
        */
        Map<String, Object> resultMap = Maps.newHashMap();
        Boolean flag = voteService.addVote(vote);
        if (flag) {
            resultMap.put("isSuccess", true);
            resultMap.put("message", "创建投票成功");
            return resultMap;
        }
        resultMap.put("isSuccess", false);
        resultMap.put("message", "创建投票失败");
        return resultMap;
    }

}
