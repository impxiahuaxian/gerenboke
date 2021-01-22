<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>
<%
    String id=request.getParameter("id");
    List xwinfo=cb.get1Com("select * from xw where id='"+id+"'",9);
    cb.comUp("update xw set dj=dj+1 where id='"+id+"'");
%>

<div class="page-container" id="innerpage-wrap">
    <div class="container">
        <div class="row">
            <div class="main col-md-9 inner-left" role="main">
                <div class="blog-post blog-post-wrap">
                    <h3 class="text-center bp-title"><%=xwinfo.get(1).toString()%></h3>
                    <small class="text-center bp-desc"><i class="fa fa-tag"></i> &nbsp;
                        <%=xwinfo.get(2).toString()%>&nbsp;&nbsp;&nbsp;&nbsp;
                        |&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-calendar"></i> &nbsp;
                        <%=xwinfo.get(6).toString()%>&nbsp;&nbsp;&nbsp;&nbsp;浏览：<%=xwinfo.get(8).toString()%></small>
                    <div class="com-cnt page-content bp-content">
                        <p><%=xwinfo.get(5).toString()%></p>
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