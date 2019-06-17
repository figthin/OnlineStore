package com.oaec.OnlineStore.servlet;

import com.oaec.OnlineStore.service.EvaluationService;
import com.oaec.OnlineStore.service.ProductService;
import com.oaec.OnlineStore.service.impl.EvaluationServiceImpl;
import com.oaec.OnlineStore.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/item_show")
public class ProductServlet extends HttpServlet {
    private ProductService productService = new ProductServiceImpl();
    private EvaluationService evaluationService = new EvaluationServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");
        Map<String,Object> product = productService.queryById(productId);
        List<Map<String, Object>> evaluations = evaluationService.query(productId);
        Map<String, List<Map<String, Object>>> map = evaluationService.queryGrade(productId);
        System.out.println(map);
        List<Map<String, Object>> goodEvaluation = map.get("好评");
        List<Map<String, Object>> middleEvaluation = map.get("中评");
        List<Map<String, Object>> badEvaluation = map.get("好评");
        req.setAttribute("goodEvaluation",goodEvaluation);
        req.setAttribute("middleEvaluation",middleEvaluation);
        req.setAttribute("badEvaluation",badEvaluation);
        req.setAttribute("evaluations",evaluations);
        System.out.println(evaluations);
        req.setAttribute("product",product);
        req.getRequestDispatcher("/WEB-INF/views/item_show.jsp").forward(req,resp);
    }
}
