<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>

<div class="page-container" id="innerpage-wrap">
    <div class="container">
        <div class="row">
            <div class="main col-md-9 inner-left" role="main">
                <div class="about-page-wrap">
                    <div id="contact-wrap">
                        <h3 class="msg-title">信息查询</h3>
                        <form class="add-msg-form" action="<%=basePath%>sinfo.jsp" method="post">
                            <div class="row">
                                <div class="cf-column col-md-61">
                                    <select name="fl" style="width: 485px;height: 40px;border: 1px solid #D3D3D3;" required>
                                        <option value="">&nbsp;&nbsp;&nbsp;博客分类</option>
                                        <%
                                            if(!flist.isEmpty()){
                                                for (int m=0;m<flist.size();m++){
                                                    List list2=(List)flist.get(m);
                                        %>
                                        <option value="<%=list2.get(1).toString()%>">&nbsp;&nbsp;&nbsp;<%=list2.get(1).toString()%></option>
                                        <%}}%>
                                    </select>
                                </div>
                                <div class="cf-column col-md-61">
                                    <select name="hx" style="width: 485px;height: 40px;border: 1px solid #D3D3D3;" required>
                                        <option value="">&nbsp;&nbsp;&nbsp;户型分类</option>
                                        <%List hxlist=cb.getCom("select * from hx order by id desc",2);
                                            if(!hxlist.isEmpty()){
                                                for (int m=0;m<hxlist.size();m++){
                                                    List list2=(List)hxlist.get(m);
                                        %>
                                        <option value="<%=list2.get(1).toString()%>">&nbsp;&nbsp;&nbsp;<%=list2.get(1).toString()%></option>
                                        <%}}%>
                                    </select>
                                </div>
                                <div class="cf-column col-md-61">
                                    <select name="px" style="width: 485px;height: 40px;border: 1px solid #D3D3D3;" required>
                                        <option value="asc">&nbsp;&nbsp;&nbsp;价格升序</option>
                                        <option value="desc">&nbsp;&nbsp;&nbsp;价格降序</option>
                                    </select>
                                </div>
                                <div class="cf-column col-md-121 submit-column">
                                    <button type="submit" class="submit-button">确定提交</button>
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