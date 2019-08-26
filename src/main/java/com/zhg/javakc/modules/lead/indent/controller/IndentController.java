package com.zhg.javakc.modules.lead.indent.controller;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.lead.order.entity.OrderEntity;
import com.zhg.javakc.modules.lead.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
@RequestMapping("indent")
public class IndentController {
    @Autowired
    private OrderService orderService;
    @RequestMapping("query")
    public ModelAndView queryAll(OrderEntity orderEntity, HttpServletRequest request, HttpServletResponse response){
        // ##调用service方法查询数据库test表数据信息
        ModelAndView modelAndView =new ModelAndView("indent/list");
        Page<OrderEntity> page = orderService.queryAll2(orderEntity, new Page<>(request, response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }





}
