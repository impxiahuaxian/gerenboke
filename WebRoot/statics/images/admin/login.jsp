<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="<%=basePath%>admin/statics/css/style.css" rel="stylesheet" type="text/css" />
    <script language="JavaScript" src="<%=basePath%>admin/statics/js/jquery2.js"></script>
    <script src="<%=basePath%>admin/statics/js/cloud.js" type="text/javascript"></script>
    <script language="javascript" src="<%=basePath%>admin/statics/js/js.js"></script>
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
%>
<body style="background-color:#1c77ac; background-image: url(<%=basePath%>admin/statics/images/light.png) background-repeat:no-repeat; background-position:center top; overflow:hidden;">
<div id="mainBody">
    <div id="cloud1" class="cloud"></div>
    <div id="cloud2" class="cloud"></div>
</div>
<div class="logintop"> <span> </span>
    <ul>
        <li><a href="#"> </a></li>
    </ul>
</div>
<div class="loginbody"> <span class="systemlogo"></span>
    <form name="" method="post" action="<%=basePath%>admin/adminLogin">
        <div class="loginbox">
            <ul>
                <li>
                    <input name="username" type="text" class="loginuser" placeholder="账号" required/>
                </li>
                <li>
                    <input name="password" type="password" class="loginpwd" placeholder="密码" required/>
                </li>
                <li>
                    <input name="" type="submit" class="loginbtn" value="登录" />&nbsp;&nbsp;
                    <input type="radio" name="sf" value="工作人员" checked> 工作人员
                    <input type="radio" name="sf" value="管理员"> 管理员
                </li>
            </ul>
        </div>
    </form>
</div>
<div class="loginbm"> </div>
</body>
</html>
