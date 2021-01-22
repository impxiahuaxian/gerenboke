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
    String user=(String)session.getAttribute("user");String sf=(String)session.getAttribute("sf");
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
        </dl>
        <!--分隔符-->
        <% if(sf.equals("管理员")){ %>
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin07.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin08.png" />
                工作人员管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/system/index.jsp" target="main" class="cks">工作人员管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/system/add.jsp?method=addm" target="main" class="cks">增加工作人员</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <%}%>
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
                户型分类管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a class="cks" href="<%=basePath%>admin/hx/index.jsp" target="main">户型分类管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a class="cks" href="<%=basePath%>admin/hx/add.jsp?method=addhx" target="main">增加户型分类</a>
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
                房屋信息管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/fw/index.jsp" target="main" class="cks">房屋信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin09.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin10.png" />
                订单信息管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/dd/index.jsp" target="main" class="cks">订单信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>admin/dd/t.jsp" target="main" class="cks">订单信息统计</a>
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
