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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");
        String password2 = req.getParameter("password2");
        HttpSession session = req.getSession();
        Map<String, Object> register = userService.register(phone, password, password2);
        if (register.containsKey("succ")){
            register.put("result",true);
        }else {
            register.put("result",false);
        }
        /*if(!login.containsKey("error")){
            json.put("result",true);
            session.setAttribute("user",login);
        }else{
            json.put("result",false);
            json.put("error",login.get("error"));
            *//*if (uri!=null){
                json.put("uri",uri);
            }*//*
        }*/
        String s = JSON.toJSONString(register);
        writer.println(s);
        writer.close();

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req,resp);
    }
}
