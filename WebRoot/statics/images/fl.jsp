<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="iframe/head.jsp" %>

<script  language="javascript" >
    function top2(){
        form3.action="<%=basePath%>fl.jsp?page=1";
        form3.submit();
    }
    function last2(){
        if(form3.pageCount.value==0){//如果总页数为0，那么最后一页为1，也就是第一页，而不是第0页
            form3.action="<%=basePath%>fl.jsp?page=1";
            form3.submit();
        }else{
            form3.action="<%=basePath%>fl.jsp?page="+form3.pageCount.value;
            form3.submit();
        }
    }
    function pre2(){
        var page=parseInt(form3.page.value);
        if(page<=1){
            alert("已至第一页");
        }else{
            form3.action="<%=basePath%>fl.jsp?page="+(page-1);
            form3.submit();
        }
    }

    function next2(){
        var page=parseInt(form3.page.value);
        var pageCount=parseInt(form3.pageCount.value);
        if(page>=pageCount){
            alert("已至最后一页");
        }else{
            form3.action="<%=basePath%>fl.jsp?page="+(page+1);
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
                form3.action="<%=basePath%>fl.jsp?page=1";
                form3.submit();
            }
            else{
                form3.action="<%=basePath%>fl.jsp?page="+pageCount;
                form3.submit();
            }
        }
        else if(form3.busjump.value<=pageCount){
            var page=parseInt(form3.busjump.value);
            if(page==0){
                page=1;//如果你输入的是0，那么就让它等于1
                form3.action="<%=basePath%>fl.jsp?page="+page;
                form3.submit();
            }else{
                form3.action="<%=basePath%>fl.jsp?page="+page;
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
                <div class="our-work picture-wrap">
                    <div id="gallery-container">
                        <div class="row gallery-3-columns isotope-x clearfix">
                            <%
                                String fl=request.getParameter("fl");
                                cb.setEVERYPAGENUM(9);
                                int cou = cb.getMessageCount("select count(*) from fw where fl='"+fl+"' ");//得到信息总数
                                String page1=request.getParameter("page");
                                if(page1==null){
                                    page1="1";
                                }
                                session.setAttribute("busMessageCount", cou + "");
                                session.setAttribute("busPage", page1);
                                List pagelist1 = cb.getMessage(Integer.parseInt(page1),"select * from fw where fl='"+fl+"' order by id desc ",7);
                                session.setAttribute("qqq", pagelist1);
                                int pageCount = cb.getPageCount(); //得到页数
                                session.setAttribute("busPageCount", pageCount + "");
                                List pagelist3=(ArrayList)session.getAttribute("qqq");
                                if(!pagelist3.isEmpty()){
                                    for(int i=0;i<pagelist3.size();i++){
                                        List pagelist2 =(ArrayList)pagelist3.get(i);
                            %>
                            <div class="gallery-item isotope-item print-media col-lg-4 col-sm-4 col-xs-6">
                                <div class="inner-contents">
                                    <figure>
                                        <a class="gallery-btn swipebox" href="<%=basePath+pagelist2.get(6).toString()%>">查看更多</a>
                                        <div class="media-container"></div>
                                        <img src="<%=basePath+pagelist2.get(6).toString()%>" width="310" height="235"/> </figure>
                                    <h5 class="item-title"><a href="<%=basePath%>fwinfo.jsp?id=<%=pagelist2.get(0).toString()%>"><%=pagelist2.get(1).toString()%></a></h5>
                                </div>
                            </div>
                            <%}} %>
                        </div>
                        <div id="pages" class="page">
                            <% if(cou>0){%>
                            <form action="" method="post" name="form3">
                                <input type="hidden" name="fl" value="<%=fl%>" />
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
                <link href="<%=basePath%>statics/css/swipebox.css" rel="stylesheet" media="all" />
                <script src="<%=basePath%>statics/js/jquery.swipebox.js"></script>
                <script type="text/javascript">
                    jQuery(document).ready(function($) {
                        $(".swipebox").swipebox();
                    });
                </script>
            </div>
            <aside class="sidebar col-md-3 inner-right" role="complementary">
                <section class="widget side-news">
                    <h3 class="title">热点新闻</h3>
                    <div class="tabbed custom-tabbed">
                        <div class="block current">
                            <ul class="widget-list">
                                <%
                                    List xwlist=cb.getCom("select * from xw order by dj desc limit 8",8);
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
                                            <a href="<%=basePath%>xwinfo.jsp?id=<%=list2.get(0).toString()%>"><%=list2.get(1).toString()%></a>
                                        </p>
                                        <span class="comments"><i class="fa fa-calendar"></i> &nbsp;<%=list2.get(6).toString()%></span> </div>
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

<%@ include file="iframe/foot.jsp" %>