<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
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

    String username=(String)session.getAttribute("user");
    if(username==null){
        response.sendRedirect(path+"index.jsp");
    }
    else{
        String method=request.getParameter("method");
        String id="";
        String usernam="";String password="";String realname="";String sex="";String age="";String address="";String tel="";String sf="";
        if(method.equals("upm")){
            id=request.getParameter("id");
            List alist=cb.get1Com("select * from admin where id='"+id+"'",10);
            usernam=alist.get(1).toString();
            password=alist.get(2).toString();
            realname=alist.get(3).toString();
            sex=alist.get(4).toString();
            age=alist.get(5).toString();
            tel=alist.get(6).toString();
            address=alist.get(7).toString();
            sf=alist.get(9).toString();
        }
%>
<body>
<div class="x-body">
    <form class="layui-form" name="" method="post" action="<%=basePath%>admin/addAdmin">
        <input type="hidden" name="method" value="<%=method%>" /><input type="hidden" name="id" value="<%=id%>"/>
        <div class="layui-form-item">
            <label class="layui-form-label">用户账号：</label>
            <div class="layui-input-inline">
                <input type="text" name="username" value="<%=usernam%>" class="layui-input" required>
            </div>
            <!--
            <div class="layui-form-mid layui-word-aux">必填</div>
            -->
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">登录密码：</label>
            <div class="layui-input-inline">
                <input type="password" name="password" value="<%=password%>" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名：</label>
            <div class="layui-input-inline">
                <input type="text" name="realname" value="<%=realname%>" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别：</label>
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="radio" name="sex" value="男" checked title="男">
                    <input type="radio" name="sex" value="女" title="女">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">年龄：</label>
            <div class="layui-input-inline">
                <input type="number" min="18" max="100" name="age" value="<%=age%>" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">电话：</label>
            <div class="layui-input-inline">
                <input type="text" name="tel" value="<%=tel%>" pattern="[0-9]{11}" title="11位手机号码" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">备注信息：</label>
            <div class="layui-input-block">
                <textarea name="address" class="layui-textarea" style="height: 80px;" required><%=address%></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <button class="layui-btn" key="set-mine">确定提交</button>
        </div>
    </form>
</div>
<script src="<%=basePath%>admin/statics/lib/layui/layui.js" charset="utf-8"></script>
<script src="<%=basePath%>admin/statics/js/x-layui.js" charset="utf-8"></script>
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