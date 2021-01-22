<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>admin/statics/css/public.css">
    <script type="text/javascript" src="<%=basePath%>admin/statics/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>admin/statics/js/public.js"></script>
</head>
<%
    String user=(String)session.getAttribute("user");
    if(user==null){
        response.sendRedirect(basePath+"admin/login.jsp");
    }else{
%>
<body id="bg">
<!-- 左边节点 -->
<div class="container">

    <div class="leftsidebar_box">
        <a href="<%=basePath%>admin/iframe/main.jsp" target="main">
            <div class="line">
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin01.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin02.png" />&nbsp;&nbsp;管理菜单
            </div>
        </a>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coinL1.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coinL2.png" />
                用户信息管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/system/index2.jsp" target="main" class="cks">用户信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/system/pwd.jsp" target="main" class="cks">登录密码管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/system/tx.jsp" target="main" class="cks">用户头像管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin15.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin16.png" />
                新闻公告管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/xw/index.jsp" target="main" class="cks">新闻公告管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/xw/add.jsp?method=addxw" target="main" class="cks">增加新闻公告</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin05.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin06.png" />
                博客分类管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a class="cks" href="<%=basePath%>admin/fl/index.jsp" target="main">博客分类管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a class="cks" href="<%=basePath%>admin/fl/add.jsp?method=addfl" target="main">增加博客分类</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin05.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin06.png" />
                博客信息管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a class="cks" href="<%=basePath%>admin/bk/index.jsp" target="main">博客信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a class="cks" href="<%=basePath%>admin/bk/add.jsp?method=addbk" target="main">增加博客信息</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin03.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin04.png" />
                注册用户管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/member/index.jsp" target="main" class="cks">注册用户管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin15.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin16.png" />
                评论信息管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/pl/index.jsp" target="main" class="cks">评论信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin09.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin10.png" />
                友情链接管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/lj/index.jsp" target="main" class="cks">友情链接管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/lj/add.jsp?method=addlj" target="main" class="cks">增加友情链接</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->

        <!--分隔符-->
    </div>
</div>
</body>
<%}%>
</html>
