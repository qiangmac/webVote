<%--
  Created by IntelliJ IDEA.
  User: MQ
  Date: 2019/4/22
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>数据系统设计</title>
    <link rel="stylesheet" href="css/register.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
</head>

<body>
<div class="container-fluid">
    <div class="row">
        <!--主页面left-->
        <div class="col-lg-2 col-md-2" style="border: 1px solid red;  height: 800px;">
            <!--左侧信息展示区-->
            <div class="col-lg-12 col-md-12" style="height: 20%; border: 1px solid purple;">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">时间信息</h3>
                    </div>
                    <div class="panel-body time_panel">
                        <p>现在时间为</p><span id="time_show"></span>

                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12" style="height: 30%; border: 1px solid purple;">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">欢迎信息</h3>
                    </div>
                    <div class="panel-body">
                        <p>欢迎：xxx登录</p>
                        <p> 上次登录时间为是</p>
                        <p>2017.10.1 15.30</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12" style="height: 40%; border: 1px solid purple;">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">统计信息</h3>
                    </div>
                    <div class="panel-body">
                        <p>目前共有3个投票主题</p>
                        <p>其中:</p>
                        <p>单选投票：3个</p>
                        <p>多选投票：1个</p>
                    </div>
                </div>
            </div>
        </div>
        <!--主页面right-->
        <div class="col-lg-10 col-md-10" style="border: 1px solid red;  height: 800px;">
            <!--主页面right_top-->
            <div class="col-lg-12 col-md-12" style="border: 1px solid blue;  height: 30%;">
                <!--log图位-->
                <div class="col-lg-12 col-md-12 col-sm-12" style="height: 70%;border: 1px solid greenyellow;">
                    图表
                </div>
                <!--导航栏功能位-->
                <div class="col-lg-12 col-md-12 col-sm-12" style="height: 30%;border: 1px solid greenyellow;">
                    <div class="row">
                        <nav class="navbar navbar-default ">
                            <div class="container-fluid">
                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav" style="width: 100%  ;display: flex; justify-content: space-around;">
                                        <li ><a href="javascript:void(0);" onclick="Voting()">参与投票 <span class="sr-only">(current)</span></a></li>
                                        <li ><a href="javascript:void(0);" onclick="Manage_vote()">投票管理</a></li>
                                        <li ><a href="javascript:void(0);" onclick="Create_vote()">创建投票</a></li>
                                        <li ><a href="javascript:void(0);" onclick="Data_view()">数据可视化</a></li>
                                    </ul>
                                </div>
                                <!-- /.navbar-collapse -->
                            </div>
                            <!-- /.container-fluid -->
                        </nav>

                    </div>
                </div>
            </div>
            <!--主页面right_bottom-->
            <div class="col-lg-12 col-md-12" style="border: 1px solid blue;  height: 70%">
                <!--四大功能模块-->
                <!--预留区-->
                <div class="row hidden module_1" style="height: 10% ;border: 1px solid brown;" >
                    预留区1
                </div>
                <div class="row hidden module_2" style="height: 10% ;border: 1px solid brown;" >
                    预留区2
                </div>
                <div class="row module_3" style="height: 10% ;border: 1px solid brown;" >
                    预留区3
                </div>
                <div class="row hidden module_4" style="height: 10% ;border: 1px solid brown;" >
                    预留区4
                </div>

                <div class="row" style="height: 90%">
                    <!--参与投票-->
                    <div class="col-lg-12 col-md-12 hidden module_1" style="height: 50% ;" >
                        <table class="table table-hover ">
                            <thead>
                            <tr>
                                <th>名称</th>
                                <th>参与人数</th>
                                <th>创建者</th>
                                <th>类别</th>
                                <th>截止日期</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>班花评选</td>
                                <td>100</td>
                                <td>小智</td>
                                <td>单选</td>
                                <td>2017.9.30</td>
                                <td><button class="btn btn-default" type="submit">查看</button></td>
                            </tr>
                            <tr>
                                <td>班花评选</td>
                                <td>100</td>
                                <td>小智</td>
                                <td>单选</td>
                                <td>2017.3.20</td>
                                <td><button class="btn btn-default" type="submit">查看</button></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--投票管理-->
                    <div class="col-lg-12 col-md-12 hidden module_2" style="height: 50% ;" >

                        <table class="table table-hover ">
                            <thead>
                            <tr>
                                <th>名称</th>
                                <th>参与人数</th>
                                <th>建立时间</th>
                                <th>类别</th>
                                <th>删除</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>班花评选</td>
                                <td>100</td>
                                <td>2017.9.30</td>
                                <td>多选</td>
                                <td><button class="btn btn-default" type="submit">删除</button></td>
                            </tr>
                            <tr>
                                <td>班花评选</td>
                                <td>100</td>
                                <td>2017.3.20</td>
                                <td>单选</td>
                                <td><button class="btn btn-default" type="submit">删除</button></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--创建投票-->
                    <div class="col-lg-12 col-md-12 module_3" style="height: 50%" style="width: 100%;height: 400px;" >
                        <form class="form-inline">
                            <div class="row">
                                <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                    <label for="vote_name">票选内容:</label>
                                    <input type="text" class="form-control" id="vote_name" placeholder="请输入投票内容">
                                </div>
                            </div>
                            <!--投票功能区-->
                            <div class="row">
                                <!--投票功能区Left-->
                                <div class="form-group col-lg-2 col-md-2 col-sm-2" style="border: 1px solid chartreuse;height: 300px;">
                                    <!--下拉列表-->
                                    <div class="dropdown">
                                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                            <span id='currType'>投票类型</span>
                                            <span class="caret"></span>
                                        </button>
                                        <ul id="select" class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                            <li>单选</li>
                                            <li>多选</li>
                                        </ul>
                                    </div>
                                    <button type="button" class="btn btn-default exhibit_vote">检查选项</button>
                                </div>
                                <!--投票功能区Right-->
                                <div class="form-group col-lg-10 col-md-10 col-sm-10" style="border: 1px solid red;height: 300px; ">
                                    <div class="row">
                                        <!--创建投票区-->
                                        <div class="form-group col-lg-5 col-md-5 col-sm-5 "style="border: 1px solid coral;margin-top: 0px;height: 300px;">
                                            <div class="row div_op1" style="margin-top: 5px; margin: 0px;height: 44px;">
                                                <label for="vote_name1">选项1:</label>
                                                <input type="text" class="form-control create_option" id="vote_name1" placeholder="请输入投票内容">
                                                <button type="button" class="btn btn-default btn_1" aria-label="Left Align"onclick="Add_option()">
                                                    <span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>
                                                </button>
                                            </div>
                                        </div>
                                        <!--选项展示区-->
                                        <div class="form-group col-lg-7 col-md-7 col-sm-7" style="border: 1px solid black; height: 300px;margin-top: 0px;">
                                            <div class="panel panel-default check_panel hidden" >
                                                <div class="panel-body check_title">
                                                    Panel content
                                                </div>
                                                <div class="panel-footer">
                                                    <div class="btn-group checkbox_panel" data-toggle="buttons">
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <!--确定按钮-->
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12" style="height: 90px;border: 1px solid olivedrab;">
                                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                                    <button type="button" class="btn btn-primary">创&nbsp;建&nbsp;完&nbsp;成&nbsp;</button>
                                </div>
                            </div>

                        </form>
                    </div>
                    <!--数据可视化-->
                    <div class="col-lg-12 col-md-12 hidden module_4" style="height: 50%" >
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12" style="border: 1px solid dodgerblue; height:400px ;width: 600px;"id="main">
                                <script type="text/javascript">

                                </script>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<!--引入Jquery、bootstrap和Echart-->
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/echarts.js" ></script>
<script type="text/javascript"src="js/design.js"></script>
</html>
