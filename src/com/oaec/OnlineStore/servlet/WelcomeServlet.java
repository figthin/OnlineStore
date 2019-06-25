package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.service.AddressService;
import com.oaec.OnlineStore.service.OrderDetailService;
import com.oaec.OnlineStore.service.OrderService;
import com.oaec.OnlineStore.service.UserService;
import com.oaec.OnlineStore.service.impl.AddressServiceImpl;
import com.oaec.OnlineStore.service.impl.OrderDetailServiceImpl;
import com.oaec.OnlineStore.service.impl.OrderServiceImpl;
import com.oaec.OnlineStore.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/welcome")
public class WelcomeServlet extends HttpServlet {
    private OrderService orderService = new OrderServiceImpl();
    private UserService userService = new UserServiceImpl();
    private AddressService addressService = new AddressServiceImpl();
    private OrderDetailService orderDetailService = new OrderDetailServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        Map<String, Object> userByUserId = userService.getUserByUserId(user_id);
        req.setAttribute("user",userByUserId);
        List<Map<String, Object>> latestOrders = orderService.getLatestOrders(user_id);
        for (Map<String, Object> latestOrder : latestOrders) {
            String orders_id = latestOrder.get("ORDERS_ID").toString();
            Map<String, Object> products = orderDetailService.getOrderDetailByOrderId(Integer.parseInt(orders_id));
            String address_id = latestOrder.get("ADDRESS_ID").toString();
            Map<String, Object> address = addressService.getByAddressId(Integer.parseInt(address_id));
            latestOrder.put("address",address);
        }
        req.setAttribute("latestOrders",latestOrders);
        Map<String, List<Map<String, Object>>> ordersByStatus = orderService.getOrdersByStatus(user_id);
        System.out.println(JSON.toJSONString(ordersByStatus));
        List<Map<String, Object>> list0 = ordersByStatus.get("status0");
        List<Map<String, Object>> list1 = ordersByStatus.get("status1");
        List<Map<String, Object>> list2 = ordersByStatus.get("status2");
        System.out.println("list0 = " + list0);
        System.out.println("list1 = " + list1);
        System.out.println("list2 = " + list2);
        req.setAttribute("status0",list0);
        req.setAttribute("status1",list1);
        req.setAttribute("status2",list2);
        req.setAttribute("ordersByStatus",ordersByStatus);
        req.getRequestDispatcher("/WEB-INF/views/udai_welcome.jsp").forward(req,resp);
    }
}
