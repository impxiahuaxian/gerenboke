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
    String member=(String)session.getAttribute("member");String msf=(String)session.getAttribute("msf");
    if(member==null){
        response.sendRedirect(basePath+"login.jsp");
    }else{
%>
<body id="bg">
<!-- 左边节点 -->
<div class="container">

    <div class="leftsidebar_box">
        <a href="<%=basePath%>member/iframe/main.jsp" target="main">
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
                <a href="<%=basePath%>member/info/index.jsp" target="main" class="cks">用户信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>member/info/pwd.jsp" target="main" class="cks">登录密码管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>member/info/tx.jsp" target="main" class="cks">用户头像管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <%if(msf.equals("女")){%>
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
                <a href="<%=basePath%>member/fw/index.jsp" target="main" class="cks">房屋信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>member/fw/add.jsp?method=addfw" target="main" class="cks">增加房屋信息</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin15.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin16.png" />
                订单信息管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>member/dd/index2.jsp" target="main" class="cks">订单信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <%}else {%>
        <!--分隔符-->
        <dl class="system_log">
            <dt>
                <img class="icon1" src="<%=basePath%>admin/statics/images/coin15.png" />
                <img class="icon2" src="<%=basePath%>admin/statics/images/coin16.png" />
                订单信息管理
                <img class="icon3" src="<%=basePath%>admin/statics/images/coin19.png" />
                <img class="icon4" src="<%=basePath%>admin/statics/images/coin20.png" />
            </dt>
            <dd>
                <img class="coin11" src="<%=basePath%>admin/statics/images/coin111.png" />
                <img class="coin22" src="<%=basePath%>admin/statics/images/coin222.png" />
                <a href="<%=basePath%>member/dd/index.jsp" target="main" class="cks">订单信息管理</a>
                <img class="icon5" src="<%=basePath%>admin/statics/images/coin21.png" />
            </dd>
        </dl>
        <!--分隔符-->
        <%}%>

    </div>
</div>
</body>
<%}%>
</html>
