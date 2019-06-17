package com.oaec.OnlineStore.servlet;

import com.oaec.OnlineStore.entity.Class1;
import com.oaec.OnlineStore.service.NavService;
import com.oaec.OnlineStore.service.impl.NavServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    private NavService navService = new NavServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Class1> navs = navService.getNavs();
        Map<String, List<Map<String, Object>>> nav = navService.getNav();
        List<Map<String, Object>> class1 = nav.get("一级分类");
        List<Map<String, Object>> class2 = nav.get("二级分类");
        List<Map<String, Object>> class3 = nav.get("三级分类");
        req.setAttribute("class1",class1);
        req.setAttribute("class2",class2);
        req.setAttribute("class3",class3);
        req.setAttribute("navs",navs);
        req.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(req,resp);
    }
}
