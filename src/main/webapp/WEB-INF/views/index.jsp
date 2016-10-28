<%--
  Created by IntelliJ IDEA.
  User: xiashuai
  Date: 2016/9/9
  Time: 9:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<html>
<head>
    <base href="<%=basePath%>">
    <title>Winterfell</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.0.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="<%=basePath%>img/x.png">

</head>
<body style="background-color: #fcfcfc">
<%@ include file="navi.jsp" %>
<div class="row" style="margin-top: 70px">
    <div class="container center-block">
        <div class="col-md-2"></div>
        <div class="col-md-8 col-sm-12">
            <c:if test="${not empty blogs}">
                <c:forEach items="${blogs}" var="blog">
                    <c:if test="${blog.status == '0'}">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <a href="rest/blog/${blog.year}/${blog.month}/${blog.day}/${blog.urlname}">
                                        ${blog.title}
                                </a>
                            </div>
                            <div class="panel-footer">
                                <small>${blog.date}</small>
                                <shiro:hasAnyRoles name="admin">
                                <small style="float: right">
                                    <a href="rest/blog/delete/${blog.urlname}">delete</a>
                                </small>
                                </shiro:hasAnyRoles>
                            </div>
                        </div>
                    </c:if>
                </c:forEach>
            </c:if>
        </div>
        <div class="col-md-2">
        </div>

    </div>
</div>
</body>
</html>
