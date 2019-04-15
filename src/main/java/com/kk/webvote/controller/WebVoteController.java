package com.kk.webvote.controller;

import com.google.common.collect.Maps;
import com.kk.webvote.controller.base.BaseController;
import com.kk.webvote.entity.User;
import com.kk.webvote.entity.Vote;
import com.kk.webvote.service.UserService;
import com.kk.webvote.service.VoteService;
import com.kk.webvote.util.PageEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
public class WebVoteController extends BaseController {

    @Autowired
    UserService userService;
    @Autowired
    VoteService voteService;

    @GetMapping(value = "/user/getUser")
    public String getUser(Model model, @RequestBody User user) {
        /*user.setName("马强强");
        user.setGender("男男");
        user.setId(14);
        user.setAge("233");
        userService.addUser(user);*/
        // 批量查询的功能测试可用,已实现分页功能
        /* 前面请求参数中需传查询页数和大小
        *   {
	            "pageNum":1,
	            "pageSize":10
            }
        * */
        List<User> allUser = userService.getAllUser(user);
        new PageEntity<>(allUser);
        return "index";
    }

    @RequestMapping(value="/hello")
    public ModelAndView index(ModelAndView mv) {
        mv.setViewName("index");
        return mv;
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
        * $.post("/vote/addVote",{
        *       id: id,
        *       title: title
        *   },
        *   function(result){
        *       if (result.isSuccess) {
        *           alert(result.message);
        *           // 业务代码
        *       } else {
        *           alert(result.message);
        *           // 业务代码
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
