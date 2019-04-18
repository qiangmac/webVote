package com.kk.webvote.controller.configuer.interceptor;

import com.kk.webvote.controller.configuer.Const.LoginInterceptorConst;
import com.kk.webvote.entity.User;
import com.kk.webvote.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author maqiang
 * 此处自定义的拦截器用于登陆验证
 */
@Component
public class LoginInterceptor implements HandlerInterceptor {

    @Autowired
    UserService userService;


    // 这个方法实在访问接口之前执行的,只需要在这里写验证登陆状态的业务逻辑
    // 重写了父类的perHandle()方法
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        // 获取访问路径
        String path = request.getRequestURI();
        if (path.matches(LoginInterceptorConst.LOGIN)) {
            String loginId = (String) request.getAttribute("loginId");
            String password = (String) request.getAttribute("password");
            User loginUser = userService.validateLoginUser(loginId, password);
            if (loginUser == null) {
                // 登陆时没有查询到对应的用户, 转发到无用户页面
                response.sendRedirect(request.getContextPath() + LoginInterceptorConst.NULLUSERPAGE);
                return false;
            }
            session.setAttribute("currentUser", loginUser);
            session.setAttribute("isVisitor", false);
            return true;
        }
        // 游客登陆不拦截,设置游客属性
        if (path.matches(LoginInterceptorConst.NO_INTERCEPTOR_PATH)) {
            session.setAttribute("isVisitor", true);
            return true;
        }
        // 从session中获取当前用户,
        User currentUser = (User) session.getAttribute("currentUser");
        if (currentUser == null) {
            return false;
        }
        return true;
    }

    /*@Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           @Nullable ModelAndView modelAndView) throws Exception {

    }*/

    /*@Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
                                @Nullable Exception ex) throws Exception {

    }*/

}
