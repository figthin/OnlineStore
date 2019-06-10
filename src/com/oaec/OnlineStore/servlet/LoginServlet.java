package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.dao.UserDao;
import com.oaec.OnlineStore.dao.impl.UserDaoImpl;


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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private UserDao userDao = new UserDaoImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String uri = req.getParameter("uri");
        HttpSession session = req.getSession();
        Map<String, Object> map = userDao.login(username, password);

        Map<String, Object> json = new HashMap<>();
        if(map.containsKey("error")){
            json.put("result",false);
            json.put("error",map.get("error"));
        }else{
            json.put("result",true);
            session.setAttribute("user",map.get("succ"));
            if (uri!=null){
                json.put("uri",uri);
            }
        }
        String s = JSON.toJSONString(json);
        writer.println(s);
        writer.close();

    }
}
