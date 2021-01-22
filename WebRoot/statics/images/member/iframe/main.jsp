<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

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
    String member=(String)session.getAttribute("member");String msf=(String)session.getAttribute("msf");
%>
<body>
<font size="5"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎<%=msf%>：<%=member%></font>
</body>
</html>