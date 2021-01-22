<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>admin/statics/css/public.css" />
    <script type="text/javascript" src="<%=basePath%>admin/statics/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>admin/statics/js/public.js"></script>
    <script type="text/javascript" src="<%=basePath%>admin/statics/js/external.js"></script>
</head>
<%
    String user=(String)session.getAttribute("user");String sf=(String)session.getAttribute("sf");
%>
<body>
<div class="head">
    <div class="headL">
        <img class="headLogo" src="<%=basePath%>admin/statics/images/logo.png"/>
    </div>
    <div class="headR">
        <a href="<%=basePath%>index.jsp" target="_top">【前台首页】</a>
        <a href="<%=basePath%>admin/adminExit" onclick="if (confirm('确定要退出吗？')) return true; else return false;" target="_top">【注销退出】</a>
    </div>
</div>
</body>
</html>
