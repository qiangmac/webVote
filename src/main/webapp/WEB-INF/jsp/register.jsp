<%--
  Created by IntelliJ IDEA.
  User: MQ
  Date: 2019/4/21
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>注册</title>
    <link rel="stylesheet" href="css/register.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <!--引入Jquery和bootstrap-->
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!--验证控件-->
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <!--验证控件语言-->
    <script type="text/javascript" src="js/zh_CN.js"></script>
    <style>
        .form-group {
            margin-top: 0px;
        }
    </style>
    <script>
        $(function() {
            $('#form').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    username: {
                        message: '该用户名无效',
                        validators: {
                            notEmpty: {
                                message: '用户名不能为空'
                            },
                            stringLength: {
                                min: 2,
                                max: 10,
                                message: '用户名处于6~30个字符之间'
                            }
                        }
                    },
                    loginId: {
                        message: '登陆名无效',
                        validators: {
                            notEmpty: {
                                message: '登陆名不可为空'
                            },
                            stringLength: {
                                min: 2,
                                max: 10,
                                message: '登录名处于6~30个字符之间'
                            },
                            regexp: {
                                regexp: /^[a-zA-Z0-9_]+$/,
                                message: '登录名必须使用数字、字母和下划线组成'
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: '邮箱不能为空'								},
                            emailAddress: {
                                message: '邮箱格式不正确'
                            }
                        }
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: '密码不能为空'
                            },
                            different: {
                                field: 'username',
                                message: '密码不能和用户名一致'
                            },
                            stringLength: {
                                min: 8,
                                message: '密码至少8位'
                            },
                        }
                    },
                    confirm_password: {
                        validators: {
                            notEmpty: {
                                message: '此项不能为空'
                            },
                            identical: {
                                field: 'password',
                                message: '确保两次密码输入一致'
                            }
                        }
                    },
                    /*phone: {
                        validators: {
                            notEmpty: {
                                message: '此项不能为空'
                            },
                            regexp: {
                                regexp: ^1(3|4|5|7|8)\d{9}$,
                                message: '手机号不符合格式要求'
                            }
                        }
                    },*/
                }
            });
        });
    </script>

</head>

<body>

<div class="container " id="container" style="background-color: white;">
    <div class="row col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="col-md-12 col-md-12 col-sm-12 col-xs-12 center-block" id="register_block">
            <!--标题-->
            <div class="col=lg-12" id="list_top">
                <p class="bg-primary" id="list_title">注&nbsp;册&nbsp;表&nbsp;单&nbsp;</p>
            </div>
            <!--验证项目-->
            <form id="form" class="form-horizontal" style="width: 80%;">
                <div class="form-horizontal" id="list_body" style="display: flex;flex-direction: column ;justify-content: space-around;margin-top: 25px;">
                    <!--用户名-->
                    <div class="form-group">
                        <div class="col-sm-10" style="width: 100%;height: 95px;">

                            <input name='username' type="text" class="form-control r_input " id="username" placeholder="用户名 " style="height:40px; " />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10" style="width: 100%;height: 95px;">

                            <input name='loginId' type="text" class="form-control r_input " id="loginId" placeholder="登录名 " style="height:40px; " />
                        </div>
                    </div>
                    <!--密码-->
                    <div class="form-group ">
                        <div class="col-sm-10 " style="width: 100%; height: 95px;">

                            <input type="password" class="form-control " name="password" id="password" placeholder="密码 " style="height: 40px; " />
                        </div>
                    </div>

                    <!--确认密码-->
                    <div class="form-group ">

                        <div class="col-sm-10 " style="width: 100%; height: 95px;">

                            <input type="password" class="form-control " id="confirm_password" name="confirm_password" placeholder="确认密码 " style="height: 40px; ">
                        </div>
                    </div>
                    <!--email-->
                    <div class="form-group ">
                        <div class="col-sm-10 " style="width: 100%; height: 95px;">

                            <input type="text" class="form-control " id="email" name="email" placeholder="E-mail" style="height: 40px;">
                        </div>
                    </div>

                    <!--手机号-->
                    <!--<div class="form-group ">
                        <div class="col-sm-10 " style="width: 100%; ">
                            <label class="control-label " for="phone "></label>
                            <input type="text " class="form-control " id="phone" name="phone" placeholder="phone" style="height: 40px; ">
                        </div>
                    </div>-->
                    <!--确认按钮-->
                    <div id="list_bottom " class="col-lg-12 center-block " style="text-align: center; ">
                        <input class="btn btn-default btn-info" type="button"  style="width: 30%;" onclick="registerUser()" value="提交"/>
                        <input class="btn btn-default btn-info" type="button" style="width: 30%;" onclick="location.href='toIndex'" value="取消"/>
                    </div>

                </div>

            </form>
        </div>

    </div>

</div>
</body>
<script type="text/javascript">
    function registerUser() {
        alert($("#username").val());
        var formData = {
            userName : $("#username").val(),
            loginId: $("#loginId").val(),
            password: $("#password").val(),
            email: $("#email").val()
        };
        $.ajax({
            type: "post", //请求方式
            url: "user/registerUser",
            data: formData, //传入组装的参数
            success: function (result) {
                alert();
            }
        });
    }
</script>

</html>
