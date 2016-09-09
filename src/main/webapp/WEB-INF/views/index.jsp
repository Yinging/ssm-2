<%--
  Created by IntelliJ IDEA.
  User: xiashuai
  Date: 2016/9/9
  Time: 9:22
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
    <title>Winterfell</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
<%@ include file="navi.jsp" %>
<div class="container-fluid">
    <div class="list-group">
        <c:if test="${not empty users}">
            <c:forEach items="${users}" var="user">
                <a href="#" class="list-group-item">
                    <h4 class="list-group-item-heading">
                            ${user.name}
                    </h4>
                    <p class="list-group-item-text">
                            ${user.password}
                    </p>
                </a>
            </c:forEach>
        </c:if>
    </div>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</body>
</html>
