<%--
  Created by IntelliJ IDEA.
  User: xiashuai
  Date: 2016/9/14
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <base href="<%=basePath%>">
    <title>edit</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.0.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/summernote.css">
    <script type="text/javascript" src="<%=basePath%>js/summernote.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/summernote-zh-CN.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/edit.js"></script>
</head>
<body>
<%@ include file="navi.jsp" %>
<div class="row" style="margin-top: 70px">
    <div class="container center-block">
        <div class="col-md-2"></div>
        <div class="col-md-8 col-sm-12">
            <input id="urlname" type="text" class="form-control" placeholder="请输入英文名字" style="margin-top: 20px">
            <input id="title" type="text" class="form-control" placeholder="请输入标题" style="margin-top: 30px; margin-bottom: 30px">
            <div id="summernote"></div>
            <button id="commit" type="button" class="btn btn-primary btn-lg btn-block" style="margin-bottom: 70px">完成</button>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
</body>
</html>
