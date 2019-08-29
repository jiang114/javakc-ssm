package com.zhg.javakc.modules.driver.basic.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import com.zhg.javakc.modules.driver.basic.service.BasicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("basic")
public class BasicController {

    @Autowired
    private BasicService basicService;

    @RequestMapping("query")
    public ModelAndView queryAll(BasicEntity basicEntity, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView =new ModelAndView("basic/list");
        Page<BasicEntity> page = basicService.queryAll(basicEntity, new Page<>(request, response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    @RequestMapping("create")
    public String create(BasicEntity basicEntity){
        basicEntity.setDriver_id(CommonUtil.uuid());
        basicService.save(basicEntity);
        return "redirect:query.do";
    }

    @RequestMapping("view")
    public String view(String ids, ModelMap modelMap){
        BasicEntity basicEntity = basicService.get(ids);
        modelMap.put("basicEntity",basicEntity);
        return "basic/update";
    }
    @RequestMapping("view2")
    public String view2(String ids, ModelMap modelMap){
        BasicEntity basicEntity = basicService.get(ids);
        modelMap.put("basicEntity",basicEntity);
        return "basic/query2";
    }
    @RequestMapping("update")
    public String update(BasicEntity basicEntity){
        basicService.update(basicEntity);
        return "redirect:query.do";
    }
    @RequestMapping("delete")
    public String delete(String [] ids){
        basicService.delete(ids);
        return "redirect:query.do";
    }
    }

