<%--
  Created by IntelliJ IDEA.
  User: xiashuai
  Date: 2016/9/13
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>${blog.title}</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/blogbody.css?v=09171349">
    <link rel="shortcut icon" href="<%=basePath%>img/x.png">
</head>
<body>
<%@ include file="navi.jsp" %>
<div class="row" >
    <div class="container center-block">
        <div class="col-md-2"></div>
        <div class="col-md-8 col-sm-12 blog" style="margin-top: 70px; margin-bottom: 30px;">
            <div class="panel panel-default">
                <div class="panel-body">
                    ${blog.content}
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>
