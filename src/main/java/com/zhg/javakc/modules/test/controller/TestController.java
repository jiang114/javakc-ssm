package com.zhg.javakc.modules.test.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.test.entity.TestEntity;
import com.zhg.javakc.modules.test.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Author lisiyu
 * @Date 19/8/22 - 11:49
 */
@Controller
@RequestMapping("test")
public class TestController {

 @Autowired
 private TestService testService;

@RequestMapping("queryAll")
 public ModelAndView queryAll(TestEntity testEntity, HttpServletRequest request, HttpServletResponse response){
        // ##调用service方法查询数据库test表数据信息
    ModelAndView modelAndView =new ModelAndView("test/list");
    Page<TestEntity> page = testService.queryAll(testEntity, new Page<>(request, response));
    modelAndView.addObject("page",page);
    return modelAndView;
    }
@RequestMapping("create")
    public String create(TestEntity testEntity){
        testEntity.setTestId(CommonUtil.uuid());
        testService.save(testEntity);
        return "redirect:queryAll.do";
    }

    @RequestMapping("view")
    public String view(String ids, ModelMap modelMap){
        TestEntity testEntity = testService.get(ids);
        modelMap.put("testEntity",testEntity);
        return "test/update";
    }
    @RequestMapping("update")
    public String update(TestEntity testEntity){
        testService.update(testEntity);
        return "redirect:queryAll.do";
    }
    @RequestMapping("delete")
    public String delete(String [] ids){
        testService.delete(ids);
        return "redirect:queryAll.do";
    }


}
