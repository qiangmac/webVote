package com.kk.webvote.controller.base;

import com.kk.webvote.entity.User;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Author maqiang
 * @Date 2019/4/14
 */
public class BaseController {

    public HttpServletRequest getRequest() {
        HttpServletRequest request
                = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        return request;
    }

    public HttpSession getSession() {
        return this.getRequest().getSession();
    }

    public User getCurrentUser() {
        return (User) this.getRequest().getSession().getAttribute("currentUser");
    }


}
