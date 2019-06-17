package com.oaec.OnlineStore.servlet;

import com.oaec.OnlineStore.service.CartService;
import com.oaec.OnlineStore.service.impl.CartServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/cart")
public class CartSevlet extends HttpServlet {
    private CartService cartService = new CartServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>)session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        Map<String, Object> totalPrice = cartService.getTotalPrice(user_id);
        List<Map<String, Object>> products = cartService.getProductByUserId(user_id);
        req.setAttribute("products",products);
        req.setAttribute("total",totalPrice);
        req.getRequestDispatcher("/WEB-INF/views/udai_shopcart.jsp").forward(req,resp);
    }
}
