package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.service.AddressService;
import com.oaec.OnlineStore.service.CartService;
import com.oaec.OnlineStore.service.ProductService;
import com.oaec.OnlineStore.service.impl.AddressServiceImpl;
import com.oaec.OnlineStore.service.impl.CartServiceImpl;
import com.oaec.OnlineStore.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/shopcart_pay")
public class CartPayServlet extends HttpServlet {
    private AddressService addressService = new AddressServiceImpl();
    private CartService cartService = new CartServiceImpl();
    private ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        String[] cartIds = req.getParameterValues("cartId");
        List<Map<String,Object>> cartList = new ArrayList<>();
        for (String cartId : cartIds) {
            Map<String, Object> cart = cartService.getByCartId(cartId);
            String product_id = cart.get("PRODUCT_ID").toString();
            Map<String, Object> product = productService.queryById(product_id);
            Map<String, Object> totalPrice = cartService.getTotalPrice(Integer.parseInt(cartId), Integer.parseInt(product_id));
            cart.put("totalPrice",totalPrice);
            cart.put("product",product);
            cartList.add(cart);
        }
        Map<String, Object> total = cartService.getTotal(user_id, cartIds);
        req.setAttribute("total",total);
        req.setAttribute("cartList",cartList);
        List<Map<String, Object>> address = addressService.getAddress(user_id);
        req.setAttribute("address",address);
        req.getRequestDispatcher("/WEB-INF/views/udai_shopcart_pay.jsp").forward(req,resp);
    }
}
