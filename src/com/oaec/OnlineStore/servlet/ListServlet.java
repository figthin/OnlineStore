package com.oaec.OnlineStore.servlet;

import com.oaec.OnlineStore.service.NavService;
import com.oaec.OnlineStore.service.ProductService;
import com.oaec.OnlineStore.service.impl.NavServiceImpl;
import com.oaec.OnlineStore.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/item_category")
public class ListServlet extends HttpServlet {
    private ProductService productService = new ProductServiceImpl();
    private NavService navService = new NavServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, List<Map<String, Object>>> nav = navService.getNav();
        List<Map<String, Object>> class1 = nav.get("一级分类");
        List<Map<String, Object>> class2 = nav.get("二级分类");
        List<Map<String, Object>> class3 = nav.get("三级分类");
        req.setAttribute("class1",class1);
        req.setAttribute("class2",class2);
        req.setAttribute("class3",class3);

        String name = req.getParameter("name");
        String class1Id = req.getParameter("class1Id");
        String class2Id = req.getParameter("class2Id");
        List<Map<String, Object>> list = productService.query(name,class1Id,class2Id);
        req.setAttribute("list",list);
        req.getRequestDispatcher("/WEB-INF/views/item_category.jsp").forward(req,resp);
    }
}
