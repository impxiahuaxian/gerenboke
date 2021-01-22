<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>

<section id="home-section" class="slider1">
    <div class="tp-banner-container">
        <div class="tp-banner">
            <ul>
                <li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="banner1"> <img src="<%=basePath%>statics/images/b1.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" /> </li>
                <li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="banner1"> <img src="<%=basePath%>statics/images/b2.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" /> </li>
                <li data-transition="fade" data-slotamount="7" data-masterspeed="500" data-saveperformance="on" data-title="banner1"> <img src="<%=basePath%>statics/images/b3.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat" /> </li>
            </ul>
            <div class="tp-bannertimer"></div>
        </div>
    </div>
</section>

<section class="services-section" id="index-cate">
    <div class="container">
        <div class="services-box">
            <div class="row">
                <%
                    List fw2list=cb.getCom("select * from fw order by id desc limit 4",7);
                    if(!fw2list.isEmpty()){
                        for(int i=0;i<fw2list.size();i++){
                            List list2 =(ArrayList)fw2list.get(i);
                %>
                <div class="col-md-3 col-sm-6 col-xs-6 cate-itme">
                    <div class="services-post">
                        <a href="<%=basePath%>fwinfo.jsp?id=<%=list2.get(0).toString()%>" class="thumb-link"><img src="<%=basePath+list2.get(6).toString()%>" /></a>
                        <div class="services-content">
                            <h2><a href="<%=basePath%>fwinfo.jsp?id=<%=list2.get(0).toString()%>"><%=list2.get(1).toString()%></a></h2>
                            <p><%=list2.get(2).toString()%>/<%=list2.get(3).toString()%> <%=list2.get(4).toString()%>平米 <%=list2.get(5).toString()%>元/月</p>
                            <a href="<%=basePath%>fwinfo.jsp?id=<%=list2.get(0).toString()%>" class="readmore">查看更多 <i class="fa fa-angle-double-right"></i></a>
                        </div>
                    </div>
                </div>
                <%}}%>
            </div>
        </div>
    </div>
</section>

<section class="portfolio-section" id="index-portfolio">
    <div class="container">
        <h3 class="text-center section-title"><a href="javascript:;">房屋信息</a> </h3>
        <div class="portfolio-box owl-wrapper">
            <div class="owl-carousel" data-num="4">
                <%
                    List fwlist=cb.getCom("select * from fw order by id desc limit 8",7);
                    if(!fwlist.isEmpty()){
                        for(int i=0;i<fwlist.size();i++){
                            List list2 =(ArrayList)fwlist.get(i);
                %>
                <div class="item project-post">
                    <div class="project-gallery"> <img src="<%=basePath+list2.get(6).toString()%>" />
                        <div class="hover-box">
                            <div class="inner-hover">
                                <h2><a href="<%=basePath%>fwinfo.jsp?id=<%=list2.get(0).toString()%>"><%=list2.get(1).toString()%></a></h2>
                                <span><%=list2.get(2).toString()%>/<%=list2.get(3).toString()%></span> </div>
                        </div>
                    </div>
                    <h3 class="iport-h3-title"><a href="<%=basePath%>fwinfo.jsp?id=<%=list2.get(0).toString()%>"><%=list2.get(1).toString()%></a></h3>
                </div>
                <%}}%>
            </div>
        </div>
    </div>
</section>

<section class="news-section" id="index-news">
    <div class="container">
        <h3 class="text-center section-title"><a href="%=basePath%>xw.jsp">新闻公告</a> </h3>
        <div class="news-box owl-wrapper">
            <div class="owl-carousel" data-num="4">
                <%
                    List xwlist=cb.getCom("select * from xw order by id desc limit 8",8);
                    if(!xwlist.isEmpty()){
                        for(int i=0;i<xwlist.size();i++){
                            List list2 =(ArrayList)xwlist.get(i);
                %>
                <div class="item news-post">
                    <div class="news-gallery">
                        <a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>" class="thumb-link"><img src="<%=basePath+list2.get(4).toString()%>"/></a>
                        <div class="date-post">
                            <p><%=list2.get(6).toString()%></p>
                        </div>
                    </div>
                    <div class="news-content">
                        <h2 class="inews-title"><a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>" ><%=list2.get(1).toString()%></a></h2>
                        <p class="desc"><%=list2.get(3).toString().length()>55?list2.get(3).toString().substring(0,55):list2.get(3).toString()%>...</p>
                        <a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>" class="news-readmore">阅读更多 <i class="fa fa-angle-right"></i></a>
                    </div>
                </div>
                <%}}%>
            </div>
        </div>
    </div>
</section>

<%@ include file="iframe/foot.jsp" %>