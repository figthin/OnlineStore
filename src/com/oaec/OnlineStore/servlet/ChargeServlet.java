package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.service.UserService;
import com.oaec.OnlineStore.service.impl.UserServiceImpl;

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

@WebServlet("/charge")
public class ChargeServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        String money = req.getParameter("money");
        Boolean charge = userService.charge(user_id, Integer.parseInt(money));
        Map<String, Object> userByUserId = userService.getUserByUserId(user_id);
        Map<String,Object> json = new HashMap<>();
        json.put("result",charge);
        json.put("balance",userByUserId.get("BALANCE"));
        writer.println(JSON.toJSONString(json));
        writer.close();
    }
}
