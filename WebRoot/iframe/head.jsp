<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="cb" class="com.bean.ComBean"/>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/font-awesome.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/bootstrap.min.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/owl.carousel.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/owl.theme.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/settings.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/style-red.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>statics/css/tk.css" media="screen" />
    <script type="text/javascript" src="<%=basePath%>statics/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>statics/js/owl.carousel.min.js"></script>
</head>

<body>
<div id="container">
<header class="clearfix" id="header-sec">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="javascript:;"> <img src="<%=basePath%>statics/images/logo.png" alt="" class="logo" />  </a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right" id="navigation">
                    <li class="Lev1">
                        <a href="<%=basePath%>index.jsp" class='menu1'>网站首页</a>
                    </li>
                    <li class="Lev1">
                        <a href="<%=basePath%>xw.jsp" class="menu1">新闻公告</a>
                    </li>
                    <li class="Lev1">
                        <a href="<%=basePath%>bk.jsp" class="menu1 ">博客信息</a>
                    </li>
                    <li class="Lev1">
                        <a href="<%=basePath%>dj.jsp" class="menu1 ">热门博客</a>
                    </li>
                    <li class="Lev1">
                        <a href="<%=basePath%>s.jsp" class="menu1 ">博客查询</a>
                    </li>

                    <li class="Lev1">
                        <a href="<%=basePath%>member/index.jsp" class="menu1 ">用户中心</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<%
    String message = (String)request.getAttribute("message");
    if(message == null){
        message = "";
    }
    if (!message.trim().equals("")){
        out.println("<script language='javascript'>");
        out.println("alert('"+message+"');");
        out.println("</script>");
    }
    request.removeAttribute("message");
%>