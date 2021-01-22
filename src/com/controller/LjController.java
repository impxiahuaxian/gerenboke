package com.controller;
/**
 * 链接管理
 */

import com.pojo.Lj;
import com.service.LjService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/lj")
public class LjController {
    @Autowired
    private LjService ljService;

    @RequestMapping("/addMethod") //增加
    public String addMethod(HttpServletRequest request, Lj lj) throws Exception {
        String method = request.getParameter("method");
        if(method.equals("addlj")){
            int flag = ljService.insertSelective(lj);
            if(flag==1){
                request.setAttribute("message", "操作成功！");
                return "admin/lj/index";
            }
            else{
                request.setAttribute("message", "操作失败！");
                return "admin/lj/index";
            }
        }
        else {//修改
            int flag = ljService.updateByPrimaryKeySelective(lj);
            if(flag==1){
                request.setAttribute("message", "操作成功！");
                return "admin/lj/index";
            }
            else{
                request.setAttribute("message", "操作失败！");
                return "admin/lj/index";
            }
        }
    }
    @RequestMapping("/del/{id}") //删除
    public String deleteMethod(HttpServletRequest request, @PathVariable("id") int id) {
        int flag = ljService.deleteByPrimaryKey(id);
        if(flag==1){
            request.setAttribute("message", "操作成功！");
            return "admin/lj/index";
        }
        else{
            request.setAttribute("message", "操作失败！");
            return "admin/lj/index";
        }
    }
    @RequestMapping("batchDel") //批量删除
    public String batchDel(HttpServletRequest request) {
        String chk_list[] = request.getParameterValues("chk_list");
        for(int i=0;i<chk_list.length;i++){
            ljService.deleteByPrimaryKey(Integer.parseInt(chk_list[i]));
        }
        request.setAttribute("message", "操作成功！");
        return "admin/lj/index";
    }
}
