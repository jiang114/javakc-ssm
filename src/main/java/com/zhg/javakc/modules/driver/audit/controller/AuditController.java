package com.zhg.javakc.modules.driver.audit.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.driver.audit.entity.AuditEntity;
import com.zhg.javakc.modules.driver.audit.service.AuditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("audit")
public class AuditController {

    @Autowired
    private AuditService auditService;

    @RequestMapping("query1")
    public ModelAndView queryAll(AuditEntity auditEntity, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView =new ModelAndView("audit/list");
        Page<AuditEntity> page = auditService.queryAll(auditEntity, new Page<>(request, response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("view")
    public String query2(ModelMap modelMap){
        List<AuditEntity> list=auditService.query2();
        modelMap.addAttribute("list",list);
        return "audit/create";
    }
    @RequestMapping("create")
    public String create(AuditEntity auditEntity){
        auditEntity.setInspection_id(CommonUtil.uuid());
        auditService.save(auditEntity);
        return "redirect:query1.do";
    }
    @RequestMapping("view2")
    public String view(String ids, ModelMap modelMap){
        AuditEntity auditEntity = auditService.get(ids);
        List<AuditEntity> list=auditService.query2();
        modelMap.put("auditEntity",auditEntity);
        modelMap.addAttribute("list",list);
        return "audit/update";
    }
    @RequestMapping("update")
    public String update(AuditEntity auditEntity){
        auditService.update(auditEntity);
        return "redirect:query1.do";
    }
    @RequestMapping("view3")
    public String view3(String ids, ModelMap modelMap){
        AuditEntity auditEntity = auditService.get(ids);
        modelMap.put("auditEntity",auditEntity);
        return "audit/query2";
    }
    @RequestMapping("delete")
    public String delete(String [] ids){
        auditService.delete(ids);
        return "redirect:query1.do";
    }
}
