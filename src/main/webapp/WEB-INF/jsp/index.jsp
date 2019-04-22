<%--
  Created by IntelliJ IDEA.
  User: MQ
  Date: 2019/4/12
  Time: 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link rel="stylesheet" href="css/login.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js" ></script>

</head>

<body>
<div class="top col-lg-4" >考勤通&nbsp;·&nbsp;用数据改变未来</div>
<div class="content col-lg-12">

    <!--参加按钮-->
    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <button type="button" class="btn btn btn-primary" style="margin-left: -75px;">立&nbsp;即&nbsp;查&nbsp;看&nbsp;</button>
    </div>

    <!--隔离带-->
    <span class="col-lg-3 col-md-3 " style="display: inline-block;"></span>

    <span class="col-lg-3 col-md-3" style="display: inline-block;"></span>


    <!--登录项目-->
    <div class="login col-lg-3 col-md-3 col-sm-6 col-xs-12" >
        <form action="login" method="get">
            <div class="title" >数据系统设计</div>
            <!--用户名-->
            <div class="col-lg-12"style="padding-bottom: 13px;">
                <input class="form-control" id="loginId" name="loginId" type="text" placeholder="请输入账号" >
            </div>
            <!--密码-->
            <div class="col-lg-12"style="padding-bottom: 13px;">
                <input class="form-control" id="password" name="password" type="password" placeholder="请输入密码">
            </div>
            <!--注册登录-->
            <input class="btn btn-default btn-success" type="submit" <%--onclick="login()"--%> value="登&nbsp;&nbsp;录"/>
            <%--<a href="webvote/register.jsp"><button type="button" class="btn btn-success">注&nbsp;&nbsp;册</button></a>--%>
            <input type="button" class="btn btn-success" value="注&nbsp;&nbsp;册" onclick="location.href='toRegister'"/>
        </form>
    </div>




</div>
</body>
<!-- application.properties配置文件中配置了静态资源路径在WEB-INF/static下,所以这里的jquery引用路径直接是js/jquery-1.9.1.min.js -->
<script type="text/javascript">
    function login() {
        $.ajax({
            url: "login",
            type: "get",
            data: {
               loginId: $("#loginId").val(),
               password: $("#password").val()
            },
            success: function (result) {

            }
        });
    }
</script>
</html>
