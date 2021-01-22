<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="<%=basePath%>admin/statics/css/x-admin.css" media="all">
</head>
<script type="text/javascript">
    function checkPasswords() {
        var pass1 = document.getElementById("newpwd");
        var pass2 = document.getElementById("repwd");

        if (pass2.value != pass1.value)
            pass2.setCustomValidity("两次输入的密码不匹配");
        else
            pass2.setCustomValidity("");
    }
</script>
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

    String member=(String)session.getAttribute("member");
    if(member==null){
        response.sendRedirect(path+"index.jsp");
    }
    else{
%>
<body>
<div class="x-body">
    <form class="layui-form" name="" method="post" action="<%=basePath%>member/memberupPwd">
        <div class="layui-form-item">
            <label class="layui-form-label">旧密码：</label>
            <div class="layui-input-inline">
                <input type="password" name="oldpwd" id="oldpwd" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">新密码：</label>
            <div class="layui-input-inline">
                <input type="password" name="newpwd" id="newpwd" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">确认密码：</label>
            <div class="layui-input-inline">
                <input type="password" name="repwd" id="repwd" onchange="checkPasswords()" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <button class="layui-btn" key="set-mine">确定提交</button>
        </div>
    </form>
</div>
</body>
<%} %>
</html>