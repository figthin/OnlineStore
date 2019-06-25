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

@WebServlet("/checkIn")
public class CheckInServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>)session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        Boolean aBoolean = userService.checkIn(user_id);
        Map<String, Object> userByUserId = userService.getUserByUserId(user_id);
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        Map<String,Object> json = new HashMap<>();
        json.put("result",aBoolean);
        json.put("checkIn",userByUserId.get("CHECK_IN"));
        json.put("integral",userByUserId.get("INTEGRAL"));
        writer.println(JSON.toJSONString(json));
        writer.close();
    }
}
