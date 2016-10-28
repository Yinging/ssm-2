<%--
  Created by IntelliJ IDEA.
  User: xiashuai
  Date: 2016/9/21
  Time: 9:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.0.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="<%=basePath%>js/login.js?v=09211505"></script>
    <link rel="shortcut icon" href="<%=basePath%>img/x.png">
</head>
<body>
<div class="row">
    <div class="container">
        <div class="col-md-4"></div>
        <div class="col-md-4 col-sm-12">
            <div class="panel panel-default" style="margin-top: 100px">
                <div class="panel-body">
                    <input id="username" name="username" type="text" class="form-control" placeholder="请输入名字" style="margin-top: 20px">
                    <input id="password" name="password" type="text" class="form-control" placeholder="请输入密码" style="margin-top: 20px">
                    <button id="commit" type="button" class="btn btn-primary btn-lg btn-block" style="margin-top: 20px">登录</button>
                </div>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
</body>
</html>
