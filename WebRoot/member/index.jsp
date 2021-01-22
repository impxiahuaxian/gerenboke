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
    String member=(String)session.getAttribute("member");
    if(member==null){
        response.sendRedirect(basePath+"login.jsp");
    }else{
%>
<frameset rows="100,*" cols="*" scrolling="No" framespacing="0" frameborder="no" border="0">
    <frame src="<%=basePath%>member/iframe/top.jsp" name="headmenu" id="headFrame" title="headFrame"><!-- 引用头部 -->
    <!-- 引用左边和主体部分 -->
    <frameset rows="100*" cols="220,*" scrolling="No" framespacing="0" frameborder="no" border="0">
        <frame src="<%=basePath%>member/iframe/left.jsp" name="leftmenu" id="mainFrame" title="mainFrame">
        <frame src="<%=basePath%>member/iframe/main.jsp" name="main" scrolling="yes" noresize="noresize" id="rightFrame" title="rightFrame"></frameset></frameset>
<noframes></noframes>
<%}%>
</html>