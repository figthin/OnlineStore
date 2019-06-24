package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.service.OrderDetailService;
import com.oaec.OnlineStore.service.impl.OrderDetailServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/order_detail")
public class OrderDetailServlet extends HttpServlet {
    private OrderDetailService orderDetailService = new OrderDetailServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int orderId = Integer.parseInt(req.getParameter("orderId"));
        Map<String, Object> orderDetail = orderDetailService.getOrderDetailByOrderId(orderId);
        req.setAttribute("orderDetail",orderDetail);
        req.getRequestDispatcher("/WEB-INF/views/udai_order_detail.jsp").forward(req,resp);
    }
}
