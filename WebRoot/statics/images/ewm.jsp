<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>
<%String fwid=(String)request.getAttribute("id"); %>
<div class="page-container" id="innerpage-wrap">
    <div class="container">
        <div class="row">
            <div class="main col-md-9 inner-left" role="main">
                <div class="about-page-wrap">
                    <div id="contact-wrap">
                        <h3 class="msg-title">扫码付款</h3>
                        <form class="add-msg-form" action="<%=basePath%>dd/smEwm" method="post">
                            <div class="row"><input type="hidden" name="fwid" value="<%=fwid%>">
                                <div class="cf-column col-md-61">
                                    <center><img src="<%=basePath%>statics/images/ewm.png" width="200" height="200" /></center>
                                </div> 
                                <div class="cf-column col-md-121 submit-column">
                                    <button type="submit" class="submit-button">确定</button>
                                </div>
                            </div>
                        </form>
                        <script type="text/javascript" src="<%=basePath%>statics/js/jquery.form.js"></script>
                        <script type="text/javascript" src="<%=basePath%>statics/js/jquery.artdialog.js"></script>
                        <script type="text/javascript" src="<%=basePath%>statics/js/iframetools.js"></script>
                    </div>
                </div>
            </div>
            <aside class="sidebar col-md-3 inner-right" role="complementary">
                <section class="widget side-news">
                    <h3 class="title">热点新闻</h3>
                    <div class="tabbed custom-tabbed">
                        <div class="block current">
                            <ul class="widget-list">
                                <%
                                    List xwlist=cb.getCom("select * from xw order by dj desc limit 3",8);
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
        </div>
    </div>
</div>

<%@ include file="iframe/foot.jsp" %>