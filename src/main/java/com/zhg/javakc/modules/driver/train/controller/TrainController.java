package com.zhg.javakc.modules.driver.train.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import com.zhg.javakc.modules.driver.train.entity.TrainEntity;
import com.zhg.javakc.modules.driver.train.service.TrainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("train")
public class TrainController {

    @Autowired
    private TrainService trainService;

    @RequestMapping("query1")
    public ModelAndView queryAll(TrainEntity trainEntity, HttpServletRequest request, HttpServletResponse response) {
        ModelAndView modelAndView =new ModelAndView("train/list");
        Page<TrainEntity> page = trainService.queryAll(trainEntity, new Page<>(request, response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }

    @RequestMapping("view")
    public String query2(ModelMap modelMap){
        List<TrainEntity> list=trainService.query2();
        modelMap.addAttribute("list",list);
        return "train/create";
    }
    @RequestMapping("create")
    public String create(TrainEntity trainEntity){
        trainEntity.setTrain_id(CommonUtil.uuid());
        trainService.save(trainEntity);
        return "redirect:query1.do";
    }
    @RequestMapping("view2")
    public String view(String ids, ModelMap modelMap){
        TrainEntity trainEntity = trainService.get(ids);
        List<TrainEntity> list=trainService.query2();
        modelMap.put("trainEntity",trainEntity);
        modelMap.addAttribute("list",list);
        return "train/update";
    }
    @RequestMapping("update")
    public String update(TrainEntity trainEntity){
        trainService.update(trainEntity);
        return "redirect:query1.do";
    }
    @RequestMapping("view3")
    public String view3(String ids, ModelMap modelMap){
        TrainEntity trainEntity = trainService.get(ids);
        modelMap.put("trainEntity",trainEntity);
        return "train/query2";
    }
    @RequestMapping("delete")
    public String delete(String [] ids){
        trainService.delete(ids);
        return "redirect:query1.do";
    }


}
