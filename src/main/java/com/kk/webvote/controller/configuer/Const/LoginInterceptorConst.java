package com.kk.webvote.controller.configuer.Const;

/**
 * 拦截访问参数类
 */
public class LoginInterceptorConst {

    // 登陆地址
    public static final String LOGIN = "/webvote/login";

    // 不对匹配该值的访问路径拦截（正则）
    public static final String NO_INTERCEPTOR_PATH = ".*/((visitorLogin)|()).*";

    // 没有用户地址
    public static final String NULLUSERPAGE = "/nullUserPage";

    //转发到投票主页
    public static final String VOTE_MAIN = "/voteMain";

}
