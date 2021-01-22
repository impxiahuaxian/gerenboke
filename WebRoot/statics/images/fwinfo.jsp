<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>
<%
    String id=request.getParameter("id");if(id==null)id=(String)request.getAttribute("id");
    List fwinfo=cb.get1Com("select * from fw where id='"+id+"'",11);
%>

<div class="page-container" id="innerpage-wrap">
    <div class="container">
        <div class="row">
            <div class="main col-md-9 inner-left" role="main">
                <div class="blog-post blog-post-wrap">
                    <h3 class="text-center bp-title"><%=fwinfo.get(1).toString()%></h3>
                    <small class="text-center bp-desc">
                        博客：<%=fwinfo.get(2).toString()%>
                        户型：<%=fwinfo.get(3).toString()%>
                        面积：<%=fwinfo.get(4).toString()%>平米
                        租金/月：<%=fwinfo.get(5).toString()%>
                        女：<%=fwinfo.get(8).toString()%>
                        时间：<%=fwinfo.get(9).toString()%>
                        状态：<%=fwinfo.get(10).toString()%>
                        <%if(fwinfo.get(10).toString().equals("未租出")){%>
                        <a style="color: #D4171E" href="<%=basePath%>dd/addMethod?fwid=<%=id%>">我要租房</a><%}%>
                    </small>
                    <div class="com-cnt page-content bp-content">
                        <p><%=fwinfo.get(7).toString()%></p>
                        <%
                            List pllist=cb.getCom("select * from dd where fwid='"+id+"' order by id desc",13);
                            if(!pllist.isEmpty()){
                                for(int i=0;i<pllist.size();i++){
                                    List list2 =(ArrayList)pllist.get(i);
                        %>
                        <p>评分：<%=list2.get(11).toString()%>分
                            用户：<%=list2.get(9).toString()%>
                            时间：<%=list2.get(10).toString()%>
                            评价：<%=list2.get(12).toString()%></p><hr />
                        <%}}%>
                    </div>
                </div>
                <script language="JavaScript" src="<%=basePath%>statics/js/index.js"></script>
            </div>
            <aside class="sidebar col-md-3 inner-right" role="complementary">
                <section class="widget side-news">
                    <h3 class="title">热点新闻</h3>
                    <div class="tabbed custom-tabbed">
                        <div class="block current">
                            <ul class="widget-list">
                                <%
                                    List xwlist=cb.getCom("select * from xw order by dj desc limit 10",8);
                                    if(!xwlist.isEmpty()){
                                        for(int i=0;i<xwlist.size();i++){
                                            List list2 =(ArrayList)xwlist.get(i);
                                %>
                                <li>
                                    <figure>
                                        <a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>"><img src="<%=basePath+list2.get(4).toString()%>" /></a>
                                    </figure>
                                    <div class="sn-wrapper">
                                        <p class="s-desc">
                                            <a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>" ><%=list2.get(1).toString()%></a>
                                        </p>
                                        <span class="comments"><i class="fa fa-calendar"></i> &nbsp;<%=list2.get(6).toString()%></span>
                                    </div>
                                </li>
                                <%}}%>
                            </ul>
                        </div>
                    </div>
                </section>
            </aside>
        </div>
    </div>
</div>
<div class="for-bottom-padding"></div>

<%@ include file="iframe/foot.jsp" %>