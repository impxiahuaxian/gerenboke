package com.controller;
/**
 * 评论
 */

import com.pojo.Bk;
import com.pojo.Pl;
import com.service.BkService;
import com.service.PlService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Calendar;

@Controller
@RequestMapping("/pl")
public class PlController {
    String date=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

    @Autowired
    private PlService plService;
    private BkService bkService;

    public PlController(BkService bkService) {
        this.bkService = bkService;
    }

    @RequestMapping("/addMethod") //增加
    public String addMethod(HttpServletRequest request, Pl pl) throws Exception {
        HttpSession session = request.getSession();
        String member = (String)session.getAttribute("member");
        pl.setMember(member);
        pl.setSj(date);
        Bk bk = bkService.selectByPrimaryKey(Integer.parseInt(pl.getBkid()));
        pl.setBt(bk.getBt());
        int flag = plService.insertSelective(pl);
        if(flag==1){
            request.setAttribute("id", pl.getBkid());
            request.setAttribute("message", "操作成功！");
            return "bkinfo";
        }
        else{
            request.setAttribute("id", pl.getBkid());
            request.setAttribute("message", "操作失败！");
            return "bkinfo";
        }
    }
    @RequestMapping("/del/{id}") //删除
    public String deleteMethod(HttpServletRequest request, @PathVariable("id") int id) {
        int flag = plService.deleteByPrimaryKey(id);
        if(flag==1){
            request.setAttribute("message", "操作成功！");
            return "member/pl/index";
        }
        else{
            request.setAttribute("message", "操作失败！");
            return "member/pl/index";
        }
    }
    @RequestMapping("batchDel") //批量删除
    public String batchDel(HttpServletRequest request) {
        String chk_list[] = request.getParameterValues("chk_list");
        for(int i=0;i<chk_list.length;i++){
            plService.deleteByPrimaryKey(Integer.parseInt(chk_list[i]));
        }
        request.setAttribute("message", "操作成功！");
        return "member/pl/index";
    }

    @RequestMapping("/upMethod") //增加
    public String upMethod(HttpServletRequest request, Pl pl) throws Exception {
        int flag = plService.updateByPrimaryKeySelective(pl);
        if(flag==1){
            request.setAttribute("message", "操作成功！");
            return "admin/pl/index";
        }
        else{
            request.setAttribute("message", "操作失败！");
            return "admin/pl/index";
        }
    }
    @RequestMapping("/del2/{id}") //删除
    public String deleteMethod2(HttpServletRequest request, @PathVariable("id") int id) {
        int flag = plService.deleteByPrimaryKey(id);
        if(flag==1){
            request.setAttribute("message", "操作成功！");
            return "admin/pl/index";
        }
        else{
            request.setAttribute("message", "操作失败！");
            return "admin/pl/index";
        }
    }
    @RequestMapping("batchDel2") //批量删除
    public String batchDel2(HttpServletRequest request) {
        String chk_list[] = request.getParameterValues("chk_list");
        for(int i=0;i<chk_list.length;i++){
            plService.deleteByPrimaryKey(Integer.parseInt(chk_list[i]));
        }
        request.setAttribute("message", "操作成功！");
        return "admin/pl/index";
    }
}
