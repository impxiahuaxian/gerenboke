<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String htmlData = request.getParameter("nr") != null ? request.getParameter("nr") : "";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="<%=basePath%>admin/statics/css/x-admin.css" media="all">
    <link rel="stylesheet" href="<%=basePath %>editor/themes/default/default.css" />
    <link rel="stylesheet" href="<%=basePath %>editor/plugins/code/prettify.css" />
    <script charset="utf-8" src="<%=basePath %>editor/kindeditor.js"></script>
    <script charset="utf-8" src="<%=basePath %>editor/lang/zh_CN.js"></script>
    <script charset="utf-8" src="<%=basePath %>editor/plugins/code/prettify.js"></script>
    <script>
        KindEditor.ready(function(K) {
            var editor1 = K.create('textarea[name="nr"]', {
                cssPath : '<%=basePath %>editor/plugins/code/prettify.css',
                uploadJson : '<%=basePath %>editor/jsp/upload_json.jsp',
                fileManagerJson : '<%=basePath %>editor/jsp/file_manager_json.jsp',
                allowFileManager : true,
                afterCreate : function() {
                    var self = this;
                    K.ctrl(document, 13, function() {
                        self.sync();
                        document.forms['form1'].submit();
                    });
                    K.ctrl(self.edit.doc, 13, function() {
                        self.sync();
                        document.forms['form1'].submit();
                    });
                }
            });
            prettyPrint();
        });
    </script>
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
        String id="";String bt="";String fl="";String jj="";String url="";String nr="";
        if(method.equals("upxw")){
            id=request.getParameter("id");
            List jlist = cb.get1Com("select * from xw where id='"+id+"'",6);
            bt=jlist.get(1).toString();
            fl=jlist.get(2).toString();
            jj=jlist.get(3).toString();
            nr=jlist.get(5).toString();
            htmlData=nr;
        }
%>
<body>
<div class="x-body">
    <form action="<%=basePath%>UpController" method="post" enctype="multipart/form-data">
        <input type="hidden" name="method" value="<%=method%>" /><input type="hidden" name="id" value="<%=id%>"/>
        <div class="layui-form-item">
            <label class="layui-form-label">信息标题：</label>
            <div class="layui-input-inline">
                <input type="text" name="bt" value="<%=bt%>" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">信息来源：</label>
            <div class="layui-input-inline">
                <input type="text" name="fl" value="<%=fl%>" class="layui-input" required>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">信息简介：</label>
            <div class="layui-input-block">
                <textarea name="jj" class="layui-textarea" style="height: 80px;" required><%=jj%></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">上传图片：</label>
            <div class="layui-input-inline">
                <%if(method.equals("upxw")){%>
                <input type="file" name="pic" class="layui-input">
                <%}else{%>
                <input type="file" name="pic" class="layui-input" required>
                <%}%>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">详细内容：</label>
            <div class="layui-input-inline">
                <textarea name="nr" class="layui-textarea" style="height: 360px;"><%=htmlspecialchars(htmlData)%></textarea>
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
<%!
    private String htmlspecialchars(String str) {
        str = str.replaceAll("&", "&amp;");
        str = str.replaceAll("<", "&lt;");
        str = str.replaceAll(">", "&gt;");
        str = str.replaceAll("\"", "&quot;");
        return str;
    }
%>