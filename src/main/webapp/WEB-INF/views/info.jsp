<%--
  Created by IntelliJ IDEA.
  User: xiashuai
  Date: 2016/11/16
  Time: 15:38
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
    <base href="<%=basePath%>"/>
    <title>about me</title>

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script type="text/javascript" src="<%=basePath%>js/jquery-3.1.0.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/info.css?v=11171416"/>

    <link rel="shortcut icon" href="<%=basePath%>img/x.png"/>
</head>
<body>
<%@ include file="navi.jsp" %>
<div class="row" style="margin-top: 70px">
    <div class="container center-block">
        <div class="col-md-2"></div>
        <div class="col-md-8 col-sm-12">
            <div class="panel panel-default">
                <div class="panel-body info">
                    <div class="row">
                        <div class="col-xs-6">
                            <p>夏帅</p>
                            <p>18262276782</p>
                            <p>smay1227@163.com</p>
                            <p>github.com/smay1227</p>
                        </div>
                        <div class="col-xs-6">
                            <img src="<%=basePath%>img/my.jpg">
                        </div>
                    </div>

                    <h3>扬州大学</h3>
                    <p>软件工程(嵌入式软件开发)</p>
                    <p>CET-4 533</p>
                    <P>CET-6 482</P>

                    <h3>主要技能点</h3>
                    <p>android app</p>
                    <p>java web</p>
                    <p>mysql 数据库</p>
                    <p>NFC读写操作</p>
                    <p>蓝牙打印机</p>
                    <p>车牌识别</p>

                    <h3>业余技能点</h3>
                    <p>php</p>
                    <p>JQuery</p>
                    <p>bootstrap</p>
                    <p>Ajax</p>
                    <p>h5</p>

                    <h3>框架技能点</h3>
                    <p>android mvp架构 rxJava+retrofit+dagger+okHttp</p>
                    <p>java springmvc+mybatis+shiro</p>

                    <h3>我做过的东西</h3>
                    <p>任你停安卓版</p>
                    <p>停车收费PDA</p>
                    <p>外卖订餐app 配送系统</p>
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
</body>
</html>
