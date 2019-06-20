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

@WebServlet("/addCart")
public class AddCartServlet extends HttpServlet {
    private CartService cartService = new CartServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        int productId = Integer.parseInt(req.getParameter("productId"));
        int amount = Integer.parseInt(req.getParameter("amount"));
        String color = req.getParameter("color");
        String size = req.getParameter("size");
        Boolean aBoolean = cartService.addCartProduct(user_id, productId, amount, color, size);
        Map<String,Object> json = new HashMap<>();
        json.put("succ",aBoolean);
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        writer.println(JSON.toJSONString(json));
        writer.close();
    }
}
