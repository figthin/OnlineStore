package com.oaec.OnlineStore.servlet;

import com.oaec.OnlineStore.service.UserService;
import com.oaec.OnlineStore.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@WebServlet("/treasurer")
public class TreasurerServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>)session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        Map<String, Object> map = userService.getUserByUserId(user_id);
        req.setAttribute("user",map);
        req.getRequestDispatcher("/WEB-INF/views/udai_treasurer.jsp").forward(req,resp);
    }
}
