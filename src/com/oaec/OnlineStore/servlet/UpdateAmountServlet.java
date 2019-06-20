package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.service.CartService;
import com.oaec.OnlineStore.service.impl.CartServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/updateAmount")
public class UpdateAmountServlet extends HttpServlet {
    private CartService cartService = new CartServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        int productId = Integer.parseInt(req.getParameter("productId"));
        int cartId = Integer.parseInt(req.getParameter("cartId"));
        String color = req.getParameter("color");
        String size = req.getParameter("size");
        String action = req.getParameter("action");
        Boolean aBoolean = cartService.updateAmount(action,user_id, productId, color, size);
        Map<String, Object> totalPrice = cartService.getTotalPrice(cartId, productId);
        Map<String,Object> json = new HashMap<>();
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        json.put("succ",aBoolean);
        json.put("totalPrice",totalPrice);
        writer.println(JSON.toJSONString(json));
        writer.close();
    }
}
