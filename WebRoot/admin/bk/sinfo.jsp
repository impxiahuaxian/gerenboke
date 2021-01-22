<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<jsp:useBean id="cb" scope="page" class="com.bean.ComBean" />
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="<%=basePath%>admin/statics/css/x-admin.css" media="all">
    <link rel="stylesheet" href="<%=basePath%>admin/statics/css/pag.css" media="all">
    <script src="<%=basePath%>admin/statics/js/jquery-1.4.4.min.js" type="text/javascript"></script>
</head>
<script  language="javascript" >
    function top2(){
        form3.action="<%=basePath%>admin/bk/sinfo.jsp?page=1";
        form3.submit();
    }
    function last2(){
        if(form3.pageCount.value==0){//如果总页数为0，那么最后一页为1，也就是第一页，而不是第0页
            form3.action="<%=basePath%>admin/bk/sinfo.jsp?page=1";
            form3.submit();
        }else{
            form3.action="<%=basePath%>admin/bk/sinfo.jsp?page="+form3.pageCount.value;
            form3.submit();
        }
    }
    function pre2(){
        var page=parseInt(form3.page.value);
        if(page<=1){
            alert("已至第一页");
        }else{
            form3.action="<%=basePath%>admin/bk/sinfo.jsp?page="+(page-1);
            form3.submit();
        }
    }

    function next2(){
        var page=parseInt(form3.page.value);
        var pageCount=parseInt(form3.pageCount.value);
        if(page>=pageCount){
            alert("已至最后一页");
        }else{
            form3.action="<%=basePath%>admin/bk/sinfo.jsp?page="+(page+1);
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
                form3.action="<%=basePath%>admin/bk/sinfo.jsp?page=1";
                form3.submit();
            }
            else{
                form3.action="<%=basePath%>admin/bk/sinfo.jsp?page="+pageCount;
                form3.submit();
            }
        }
        else if(form3.busjump.value<=pageCount){
            var page=parseInt(form3.busjump.value);
            if(page==0){
                page=1;//如果你输入的是0，那么就让它等于1
                form3.action="<%=basePath%>admin/bk/sinfo.jsp?page="+page;
                form3.submit();
            }else{
                form3.action="<%=basePath%>admin/bk/sinfo.jsp?page="+page;
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
<script type="text/javascript">
    function checkchoose()
    {
        if($("input[name='chk_list']").is(':checked')) {
            form1.submit();
        }
        else{
            alert("请至少选择一项！");
        }
    }
</script>
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
    String admin=(String)session.getAttribute("user");
%>
<body>
<div class="x-nav">
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <!--查询-->
    <form action="<%=basePath%>admin/bk/sinfo.jsp" method="post" style="width:100%">
        <div class="layui-form-pane">
            <div class="layui-form-item">
                <label class="layui-form-label">博客标题</label>
                <div class="layui-input-inline" style="width:200px">
                    <input type="text" name="bt" autocomplete="off" style="width:200px; height:35px;border:1px solid #e6e6e6;">
                </div>
                <label class="layui-form-label">博客分类</label>
                <div class="layui-input-inline" style="width:200px">
                    <select name="fl" style="width:200px; height:35px;border:1px solid #e6e6e6;" required>
                        <option value="">请选择</option>
                        <%List flist=cb.getCom("select * from fl order by id desc",2);
                            if(!flist.isEmpty()){
                                for (int m=0;m<flist.size();m++){
                                    List list2=(List)flist.get(m);
                        %>
                        <option value="<%=list2.get(1).toString()%>"><%=list2.get(1).toString()%></option>
                        <%}}%>
                    </select>
                </div>
                <div class="layui-input-inline" style="width:80px">
                    <button class="layui-btn">搜索</button>
                </div>
            </div>
        </div>
    </form>
    <div class="tools">
        <ul class="toolbar">
            <li onclick="checkchoose()"><span><img src="<%=basePath%>admin/statics/images/t03.png"/></span>批量删除</li>
            <li><a href="<%=basePath%>admin/bk/add.jsp?method=addbk"><span><img src="<%=basePath%>admin/statics/images/t01.png" /></span>添加</a></li>
        </ul>
    </div>
    <!--查询-->
    <!--列表-->
    <form action="<%=basePath%>bk/batchDel" method="post" name="form1">
        <table class="tablelist"  border="1">
            <tr>
                <th width="35"><input type="checkbox" name="chk_all" id="chk_all"/></th>
                <th width="50">ID</th>
                <th>博客标题</th>
                <th>博客分类</th>
                <th>图片</th>
                <th>时间</th>
                <th width="100">操作</th>
            </tr>
            <script>
                $("#chk_all").click(function(){
                    $("input[name='chk_list']").attr("checked",$(this).attr("checked"));
                });
            </script>
            <%
                String bt = request.getParameter("bt");
                String fl = request.getParameter("fl");
                cb.setEVERYPAGENUM(10);
                int cou = cb.getMessageCount("select count(*) from bk where bt like '%"+bt+"%' and fl='"+fl+"' ");//得到信息总数
                String page1=request.getParameter("page");
                if(page1==null){
                    page1="1";
                }
                session.setAttribute("busMessageCount", cou + "");
                session.setAttribute("busPage", page1);
                List pagelist1 = cb.getMessage(Integer.parseInt(page1),"select * from bk where bt like '%"+bt+"%' and fl='"+fl+"'  order by id desc",6);
                session.setAttribute("qqq", pagelist1);
                int pageCount = cb.getPageCount(); //得到页数
                session.setAttribute("busPageCount", pageCount + "");
                List pagelist3=(ArrayList)session.getAttribute("qqq");
                if(!pagelist3.isEmpty()){
                    for(int i=0;i<pagelist3.size();i++){
                        List pagelist2 =(ArrayList)pagelist3.get(i);
            %>
            <tr>
                <td><input type="checkbox" name="chk_list" id="chk_list_<%=i%>" value="<%=pagelist2.get(0).toString()%>" /></td>
                <td><%=i+1 %></td>
                <td><a href="<%=basePath%>bkinfo.jsp?id=<%=pagelist2.get(0).toString()%>" target="_blank"><%=pagelist2.get(1).toString() %></a></td>
                <td><%=pagelist2.get(2).toString() %></td>
                <td><img src="<%=basePath+pagelist2.get(3).toString()%>" width="100" height="100"></td>
                <td><%=pagelist2.get(5).toString() %></td>
                <td>
                    <a href="<%=basePath%>admin/bk/add.jsp?method=upbk&id=<%=pagelist2.get(0).toString()%>">修改</a>
                    <a onclick="if (confirm('确定要删除吗？')) return true; else return false;" href="<%=basePath%>bk/del/<%=pagelist2.get(0).toString()%>">删除</a>
                </td>
            </tr>
                    <%}}%>
                </table>
            </form>
            <!--列表-->
            <!--右边底部-->
            <% if(cou>0){ %>
    <div class="page" v-show="show">
        <div class="pagelist">
            <form action="" method="post" name="form3">
                <input type="hidden" name="bt" value="<%= bt%>" />
                <input type="hidden" name="fl" value="<%= fl%>" />
                <input type="hidden" name="pageCount" value="<%= session.getAttribute("busPageCount").toString()%>" /><!--//用于给上面javascript传值-->
                <input type="hidden" name="page" value="<%=session.getAttribute("busPage").toString()%>" /><!--//用于给上面javascript传值-->
                <a href="#" onClick="top2()">&lt;&lt;</a>&nbsp;&nbsp;&nbsp;
                <a href="#" onClick="pre2()">&lt;</a>&nbsp;&nbsp;&nbsp;
                共<%=session.getAttribute("busMessageCount").toString()%>条&nbsp;&nbsp;<%=session.getAttribute("busPageCount").toString()%>页
                &nbsp;&nbsp;第<%=session.getAttribute("busPage").toString()%>页&nbsp;&nbsp;&nbsp;
                <a href="#" onClick="next2()">&gt;</a>&nbsp;&nbsp;&nbsp;
                <a href="#" onClick="last2()">&gt;&gt;</a>&nbsp;&nbsp;&nbsp;
                第&nbsp;<input name="busjump" type="text" style="width:35px; height:20px;border: 1px solid gray;"/>&nbsp;页&nbsp;
                <a href="#" onClick="bjump2()">&nbsp;确定</a>
            </form>
        </div>
    </div>
<% } %>
</div>
</body>
</html>