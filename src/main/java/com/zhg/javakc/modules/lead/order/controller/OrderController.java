package com.zhg.javakc.modules.lead.order.controller;
import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.modules.lead.order.entity.OrderEntity;
import com.zhg.javakc.modules.lead.order.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 15:49
 */
@Controller
@RequestMapping("order")
public class OrderController {

@Autowired
private OrderService orderService;
    @RequestMapping("query")
    public ModelAndView queryAll(OrderEntity orderEntity, HttpServletRequest request, HttpServletResponse response){
        // ##调用service方法查询数据库test表数据信息
        ModelAndView modelAndView =new ModelAndView("order/list");
        Page<OrderEntity> page = orderService.queryAll(orderEntity, new Page<>(request, response));
        modelAndView.addObject("page",page);
        return modelAndView;
    }
    @RequestMapping("create")
    public String create(String[] ids, OrderEntity orderEntity){
      orderService.save2(ids,orderEntity);
        return "redirect:query.do";
    }
   //查看订单详细信息
    @RequestMapping("view")
    public String view(@RequestParam(name="ids") String ids, ModelMap modelMap){
        OrderEntity orderEntity = orderService.get(ids);
        modelMap.put("orderEntity",orderEntity);
        return "order/look2";
    }

    @ResponseBody
    @RequestMapping("view3")
    public OrderEntity view3(String ids){
        OrderEntity orderEntity = orderService.get(ids);
        return orderEntity;
    }

    /**
     * 根据ids查询然后修改
     * @param ids
     * @param modelMap
     * @return
     */
    @RequestMapping("view2")
    public String view2(String ids, ModelMap modelMap){
        OrderEntity orderEntity = orderService.get(ids);
        modelMap.put("orderEntity",orderEntity);
        return "order/update";
    }

    /**
     * 订单修改
     * @param orderEntity
     * @return
     */
    @RequestMapping("update")
    public String update(OrderEntity orderEntity){
        orderService.update(orderEntity);
        return "redirect:query.do";
    }

    /**
     * 订单生成修改订单状态
     * @param ids
     * @return
     */
    @RequestMapping("updateState")
    public String updateState(String[] ids){
        orderService.updateState(ids);
        return "redirect:query.do";
    }

    @RequestMapping("delete")
    public String delete(String [] ids){
        orderService.delete(ids);
        return "redirect:query.do";
    }



}
