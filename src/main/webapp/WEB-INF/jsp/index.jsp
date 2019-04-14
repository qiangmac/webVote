<%--
  Created by IntelliJ IDEA.
  User: MQ
  Date: 2019/4/12
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>

    <div style="width:30%;height:200px; margin-left:35%;margin-top: 15%;
    box-shadow: 5px 5px #46527b; border-radius: 5px 5px 5px 5px">
        <div style="border: #00b0ff solid; border-radius: 5px 5px 0px 0px;
        background-color: #00b0ff; text-align: center; line-height: 20px;height: 10%;">
            登录
        </div>
        <div style="height:70%; border: #00b0ff solid; text-align: center;">
            <div id="signInDiv">
                <div style="margin:7% 10% 0% 0%;">
                    <span>用户名: </span>
                    <input type="input" placeholder="请输入用户名"/>
                </div>
                <div style="margin:7% 10% 0% 0%;">
                    <span>密&nbsp;&nbsp;&nbsp;码:</span>
                    <input type="password" placeholder="请输入密码"/>
                </div>
            </div>
            <div id="signUpDiv" hidden>
                <div style="margin:4% 10% 0% 0%;">
                    <span>用户名: </span>
                    <input type="input" placeholder="请输入用户名"/>
                </div>
                <div style="margin:4% 10% 0% 0%;">
                    <span>密&nbsp;&nbsp;&nbsp;码:</span>
                    <input type="password" placeholder="请输入密码"/>
                </div>
                <div style="margin:4% 10% 0% 0%;">
                    <span>确认密码:</span>
                    <input type="password" placeholder="请重新输入密码"/>
                </div>
            </div>
        </div>
        <div style="height:12%; border: #00b0ff solid; text-align: center;text-align: center;
        border-radius: 0px 0px 5px 5px;">
            <button style="float:left; margin-left: 35%;" id="signInBtn">登陆</button>
            <button style="float:left; margin-left: 35%;" id="BackToSignInBtn" hidden onclick="toggleSignIn()">取消</button>
            <button style="float:left; margin-left: 10%" type="button" id="signUp" onclick="toggleSignUp()">注册</button>
        </div>
    </div>

</body>
<!-- application.properties配置文件中配置了静态资源路径在WEB-INF/static下,所以这里的jquery引用路径直接是js/jquery-1.9.1.min.js -->
<script src="js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    function toggleSignUp() {
        $("#signUpDiv, #BackToSignInBtn").show();
        $("#signInDiv, #signInBtn").hide();
    }

    function toggleSignIn() {
        $("#signUpDiv, #BackToSignInBtn").hide();
        $("#signInDiv, #signInBtn").show();
    }
</script>
</html>
