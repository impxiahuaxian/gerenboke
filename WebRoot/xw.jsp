<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>

<script  language="javascript" >
    function top2(){
        form3.action="<%=basePath%>xw.jsp?page=1";
        form3.submit();
    }
    function last2(){
        if(form3.pageCount.value==0){//如果总页数为0，那么最后一页为1，也就是第一页，而不是第0页
            form3.action="<%=basePath%>xw.jsp?page=1";
            form3.submit();
        }else{
            form3.action="<%=basePath%>xw.jsp?page="+form3.pageCount.value;
            form3.submit();
        }
    }
    function pre2(){
        var page=parseInt(form3.page.value);
        if(page<=1){
            alert("已至第一页");
        }else{
            form3.action="<%=basePath%>xw.jsp?page="+(page-1);
            form3.submit();
        }
    }

    function next2(){
        var page=parseInt(form3.page.value);
        var pageCount=parseInt(form3.pageCount.value);
        if(page>=pageCount){
            alert("已至最后一页");
        }else{
            form3.action="<%=basePath%>xw.jsp?page="+(page+1);
            form3.submit();
        }
    }
    function bjump2(){
        var pageCount=parseInt(form3.pageCount.value);
        if( fIsNumber(form3.busjump.value,"1234567890")!=1 ){
            alert("跳转文本框中只能输入数字!");
            form3.busjump.select();
            form3.busjump.focus();
            return false;
        }
        if(form3.busjump.value>pageCount){//如果跳转文本框中输入的页数超过最后一页的数，则跳到最后一页
            if(pageCount==0){
                form3.action="<%=basePath%>xw.jsp?page=1";
                form3.submit();
            }
            else{
                form3.action="<%=basePath%>xw.jsp?page="+pageCount;
                form3.submit();
            }
        }
        else if(form3.busjump.value<=pageCount){
            var page=parseInt(form3.busjump.value);
            if(page==0){
                page=1;//如果你输入的是0，那么就让它等于1
                form3.action="<%=basePath%>xw.jsp?page="+page;
                form3.submit();
            }else{
                form3.action="<%=basePath%>xw.jsp?page="+page;
                form3.submit();
            }

        }

    }
    //****判断是否是Number.
    function fIsNumber (sV,sR){
        var sTmp;
        if(sV.length==0){ return (false);}
        for (var i=0; i < sV.length; i++){
            sTmp= sV.substring (i, i+1);
            if (sR.indexOf (sTmp, 0)==-1) {return (false);}
        }
        return (true);
    }
</script>

<div class="page-container" id="innerpage-wrap">
    <div class="container">
        <div class="row">
            <div class="main col-md-9 inner-left" role="main">
                <article class="blog-wrap">
                    <%
                        cb.setEVERYPAGENUM(5);
                        int cou = cb.getMessageCount("select count(*) from xw ");//得到信息总数
                        String page1=request.getParameter("page");
                        if(page1==null){
                            page1="1";
                        }
                        session.setAttribute("busMessageCount", cou + "");
                        session.setAttribute("busPage", page1);
                        List pagelist1 = cb.getMessage(Integer.parseInt(page1),"select * from xw order by id desc",8);
                        session.setAttribute("qqq", pagelist1);
                        int pageCount = cb.getPageCount(); //得到页数
                        session.setAttribute("busPageCount", pageCount + "");
                        List pagelist3=(ArrayList)session.getAttribute("qqq");
                        if(!pagelist3.isEmpty()){
                            for(int i=0;i<pagelist3.size();i++){
                                List pagelist2 =(ArrayList)pagelist3.get(i);
                    %>
                    <div class="blog-article hentry format-image">
                        <figure>
                            <a class="swipebox-x" href="<%=basePath%>xwinfo.jsp?id=<%=pagelist2.get(0).toString()%>">
                                <img class="img-responsive" src="<%=basePath+pagelist2.get(4).toString()%>" width="250" height="180"/></a>
                        </figure>
                        <div class="entry-summary post-summary">
                            <header class="entry-header">
                                <h2 class="entry-title post-title">
                                    <a href="<%=basePath%>xwinfo.jsp?id=<%=pagelist2.get(0).toString()%>"><%=pagelist2.get(1).toString()%></a> </h2>
                            </header>
                            <div class="entry-meta post-meta">
                                <ul>
                                    <li class="entry-date date"><time class="entry-date"><%=pagelist2.get(6).toString()%></time></li>
                                    <li class="tags"><a href="javascript:;"><%=pagelist2.get(2).toString()%></a></li>
                                    <li class="byline author vcard">by <%=pagelist2.get(7).toString()%> </li>
                                </ul>
                            </div>
                            <div class="entry-content">
                                <p><%=pagelist2.get(3).toString().length()>100?pagelist2.get(3).toString().substring(0,100):pagelist2.get(3).toString()%>...</p>
                            </div>
                            <a href="<%=basePath%>xwinfo.jsp?id=<%=pagelist2.get(0).toString()%>" class="read-more-link">查看详细</a>
                        </div>
                    </div>
                    <%}} %>
                </article>
                <div class="pagination-wrap">
                    <div id="pages">
                        <div class="page">
                            <% if(cou>0){%>
                            <form action="" method="post" name="form3">
                                <input type="hidden" name="pageCount" value="<%= session.getAttribute("busPageCount").toString()%>" /><!--//用于给上面javascript传值-->
                                <input type="hidden" name="page" value="<%=session.getAttribute("busPage").toString()%>" /><!--//用于给上面javascript传值-->
                                <a href="#" onClick="top2()">&lt;&lt;</a>&nbsp;&nbsp;&nbsp;
                                <a href="#" onClick="pre2()">&lt;</a>&nbsp;&nbsp;&nbsp;
                                共<%=session.getAttribute("busMessageCount").toString()%>条&nbsp;&nbsp;<%=session.getAttribute("busPageCount").toString()%>页
                                &nbsp;&nbsp;第<%=session.getAttribute("busPage").toString()%>页&nbsp;&nbsp;&nbsp;
                                <a href="#" onClick="next2()">&gt;</a>&nbsp;&nbsp;&nbsp;
                                <a href="#" onClick="last2()">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;
                                第&nbsp;<input name="busjump" type="text" style="width:35px; height:15px;"/>&nbsp;页&nbsp; <a href="#" onClick="bjump2()">&nbsp;确定</a></span>
                            </form>
                            <%} %>
                        </div>
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
                                    List xwlist=cb.getCom("select * from xw order by dj desc limit 10",8);
                                    if(!xwlist.isEmpty()){
                                        for(int i=0;i<xwlist.size();i++){
                                            List list2 =(ArrayList)xwlist.get(i);
                                %>
                                <li>
                                    <figure>
                                        <a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>"><img src="<%=basePath+list2.get(4).toString()%>"/></a>
                                    </figure>
                                    <div class="sn-wrapper">
                                        <p class="s-desc">
                                            <a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>"><%=list2.get(1).toString()%></a>
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