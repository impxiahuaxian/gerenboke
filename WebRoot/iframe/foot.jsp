<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!--底部-->
<footer id="footer-sec">
    <div class="last-line">
        <div class="container">
            <p class="copyright"> Copyright &copy; 个人博客网站系统 管理入口：<a href="<%=basePath%>admin/index.jsp" style="color:#ffffff">点击进入</a> </p>
            <p class="copyright">友情链接：
                <%List ljlist=cb.getCom("select * from lj order by id desc",3);
                if(!ljlist.isEmpty()){
                    for (int i=0;i<ljlist.size();i++){
                        List list2=(List)ljlist.get(i);
                %>
        <a style="color: white" href="<%=list2.get(2).toString()%>" target="_blank"><%=list2.get(1).toString()%></a>&nbsp;&nbsp;&nbsp;
                <%   }
                }
                %>

            </p>
        </div>
    </div>
</footer>
</div>
<script type="text/javascript" src="<%=basePath%>statics/js/jquery.migrate.js"></script>
<script type="text/javascript" src="<%=basePath%>statics/js/jquery.imagesloaded.min.js"></script>
<script type="text/javascript" src="<%=basePath%>statics/js/retina-1.1.0.min.js"></script>
<script type="text/javascript" src="<%=basePath%>statics/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="<%=basePath%>statics/js/jquery.themepunch.revolution.min.js"></script>
<script type="text/javascript" src="<%=basePath%>statics/js/script.js"></script>
<link type="text/css" rel="stylesheet" href="<%=basePath%>statics/css/jquery.mmenu.all.css" />
<script type="text/javascript" src="<%=basePath%>statics/js/jquery.mmenu.all.min.js"></script>
</body>

</html>