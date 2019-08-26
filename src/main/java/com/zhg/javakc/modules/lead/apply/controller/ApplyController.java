package com.zhg.javakc.modules.lead.apply.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.lead.apply.entity.ApplyEntity;
import com.zhg.javakc.modules.lead.apply.service.ApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 15:49
 */
@Controller
@RequestMapping("apply")
public class ApplyController {

    @Autowired
    private ApplyService applyService;

    @RequestMapping("query")
    public ModelAndView queryAll(ApplyEntity applyEntity, HttpServletRequest request, HttpServletResponse response){
        // ##调用service方法查询数据库test表数据信息
        ModelAndView modelAndView =new ModelAndView("apply/list");
        Page<ApplyEntity> page = applyService.queryAll(applyEntity, new Page<>(request, response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("create")
    public String create(ApplyEntity applyEntity){
        applyEntity.setApply_id(CommonUtil.uuid());
        applyEntity.setApply_state(0);
        applyService.save(applyEntity);
        return "redirect:query.do";
    }

    @RequestMapping("view")
    public String view(String ids, ModelMap modelMap){
        ApplyEntity applyEntity = applyService.get(ids);
        modelMap.put("applyEntity",applyEntity);
        return "apply/update";
    }
    @RequestMapping("update")
    public String update(ApplyEntity applyEntity){
        applyService.update(applyEntity);
        return "redirect:query.do";
    }
    @RequestMapping("delete")
    public String delete(String [] ids){
        applyService.delete(ids);
        return "redirect:query.do";
    }








}
