<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>
<%
    String id=request.getParameter("id");if(id==null)id=(String)request.getAttribute("id");
    List bkinfo=cb.get1Com("select * from bk where id='"+id+"'",7);
    cb.comUp("update bk set dj=dj+1 where id='"+id+"'");
%>

<div class="page-container" id="innerpage-wrap">
    <div class="container">
        <div class="row">
            <div class="main col-md-9 inner-left" role="main">
                <div class="blog-post blog-post-wrap">
                    <h3 class="text-center bp-title"><%=bkinfo.get(1).toString()%></h3>
                    <small class="text-center bp-desc">
                        博客分类：<%=bkinfo.get(2).toString()%>
                        发布时间：<%=bkinfo.get(5).toString()%>
                        浏览次数：<%=bkinfo.get(6).toString()%>
                        昵称：<%=cb.getString("select realname from admin where username='admin'")%>
                        头像：<img src="<%=cb.getString("select tx from admin where username='admin'")%>" width="50" height="50">
                    </small>
                    <div class="com-cnt page-content bp-content">
                        <p><center><img src="<%=basePath+bkinfo.get(3).toString()%>" width="500" height="400"/></center></p>
                        <p><%=bkinfo.get(4).toString()%></p><br><br><br><br>
                        <%List pllist=cb.getCom("select * from pl where bkid='"+id+"' and sh='已通过' order by id desc",6);
                            if(!pllist.isEmpty()){
                                for (int i=0;i<pllist.size();i++){
                                    List list2=(List)pllist.get(i);
                                    String tx=cb.getString("select tx from member where username='"+list2.get(1).toString()+"'");
                        %>
                        <p>
                            头像：<img src="<%=basePath+tx%>" width="50" height="50">
                            用户：<%=list2.get(1).toString()%>
                            内容：<%=list2.get(2).toString()%>
                            时间：<%=list2.get(3).toString()%>
                            回复：<%=list2.get(4).toString()%> </p><hr />
                        <%   }
                        }
                        %>
                        <%String member=(String)session.getAttribute("member"); if(member!=null){%>
                        <form name="" method="post" action="<%=basePath%>pl/addMethod?bkid=<%=id%>">
                            <p><center><textarea name="nr" cols="30" rows="5" required></textarea></center> </p>
                            <p><center><input type="submit" value="提交"></center> </p>
                        </form>
                        <%}else{%>
                        <p>登录后可以评论</p>
                        <%}%>
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