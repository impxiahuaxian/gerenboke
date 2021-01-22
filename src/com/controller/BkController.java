package com.controller;
/**
 *  博客管理
 */

import com.service.BkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/bk")
public class BkController {
    @Autowired
    private BkService bkService;

    @RequestMapping("/del/{id}") //删除
    public String deleteMethod(HttpServletRequest request, @PathVariable("id") int id) {
        int flag = bkService.deleteByPrimaryKey(id);
        if(flag==1){
            request.setAttribute("message", "操作成功！");
            return "admin/bk/index";
        }
        else{
            request.setAttribute("message", "操作失败！");
            return "admin/bk/index";
        }
    }
    @RequestMapping("batchDel") //批量删除
    public String batchDel(HttpServletRequest request) {
        String chk_list[] = request.getParameterValues("chk_list");
        for(int i=0;i<chk_list.length;i++){
            bkService.deleteByPrimaryKey(Integer.parseInt(chk_list[i]));
        }
        request.setAttribute("message", "操作成功！");
        return "admin/bk/index";
    }
}
