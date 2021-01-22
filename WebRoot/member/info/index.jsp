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
        String realname="";String sf="";String sfz="";String tel="";String email="";
        List alist=cb.get1Com("select * from member where username='"+member+"'",8);
        realname=alist.get(3).toString();
        sf=alist.get(4).toString();
        sfz=alist.get(5).toString();
        tel=alist.get(6).toString();
        email=alist.get(7).toString();
%>
<body>
<div class="x-body">
    <form class="layui-form" name="" method="post" action="<%=basePath%>member/upMember">
        <div class="layui-form-item">
            <label class="layui-form-label">姓名：</label>
            <div class="layui-input-inline">
                <input type="text" name="realname" value="<%=realname%>" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">身份：</label>
            <div class="layui-input-inline">
                <input type="text" name="sf" value="<%=sf%>" class="layui-input" readonly>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">身份证号：</label>
            <div class="layui-input-inline">
                <input type="text" name="sfz" value="<%=sfz %>" pattern="[0-9]{18}" title="18位号码" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">电话：</label>
            <div class="layui-input-inline">
                <input type="text" name="tel" value="<%=tel%>" pattern="[0-9]{11}" title="11位手机号码" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">密保邮箱：</label>
            <div class="layui-input-block">
                <input type="text" name="email" value="<%=email%>" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <button class="layui-btn" key="set-mine">确定提交</button>
        </div>
    </form>
</div>
<script src="<%=basePath%>admin/statics/lib/layui/layui.js" charset="utf-8">
</script>
<script src="<%=basePath%>admin/statics/js/x-layui.js" charset="utf-8">
</script>
<script>
    layui.use(['form','layer'], function(){
        $ = layui.jquery;
        var form = layui.form()
            ,layer = layui.layer;
    });
</script>
</body>
<%} %>
</html>