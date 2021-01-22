<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<%
    String user=(String)session.getAttribute("user");
    if(user==null){
        response.sendRedirect(basePath+"admin/login.jsp");
    }else{
%>
<frameset rows="100,*" cols="*" scrolling="No" framespacing="0" frameborder="no" border="0">
    <frame src="<%=basePath%>admin/iframe/top.jsp" name="headmenu" id="headFrame" title="headFrame"><!-- 引用头部 -->
    <!-- 引用左边和主体部分 -->
    <frameset rows="100*" cols="220,*" scrolling="No" framespacing="0" frameborder="no" border="0">
        <frame src="<%=basePath%>admin/iframe/left.jsp" name="leftmenu" id="mainFrame" title="mainFrame">
        <frame src="<%=basePath%>admin/iframe/main.jsp" name="main" scrolling="yes" noresize="noresize" id="rightFrame" title="rightFrame"></frameset></frameset>
<noframes></noframes>
<%}%>
</html>