package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.service.CartService;
import com.oaec.OnlineStore.service.OrderDetailService;
import com.oaec.OnlineStore.service.OrderService;
import com.oaec.OnlineStore.service.ProductService;
import com.oaec.OnlineStore.service.impl.CartServiceImpl;
import com.oaec.OnlineStore.service.impl.OrderDetailServiceImpl;
import com.oaec.OnlineStore.service.impl.OrderServiceImpl;
import com.oaec.OnlineStore.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
    private OrderService orderService = new OrderServiceImpl();
    private OrderDetailService orderDetailService = new OrderDetailServiceImpl();
    private CartService cartService = new CartServiceImpl();
    private ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        Integer user_id = Integer.parseInt(user.get("USER_ID").toString());
        List<Map<String, Object>> orders = orderService.getOrders(user_id);
        req.setAttribute("orders",orders);
        if (req.getParameter("addressId") != null){
            Integer addressId = Integer.parseInt(req.getParameter("addressId"));
            String[] cartIds = req.getParameterValues("cartId");
            Integer orderId = orderService.getOrderId();
            Boolean isAddOrder = orderService.addOrder(orderId,user_id, addressId);
            for (String cartId : cartIds) {
                Map<String, Object> cart = cartService.getByCartId(cartId);
                String productId = cart.get("PRODUCT_ID").toString();
                String amount = cart.get("AMOUNT").toString();
                Map<String, Object> product = productService.queryById(productId);
                Boolean isAddOrderDetails = orderDetailService.addOrderDetail(orderId, Integer.parseInt(productId), Double.parseDouble(product.get("PRICE").toString()), product.get("URL").toString(), Integer.parseInt(cart.get("AMOUNT").toString()), Double.parseDouble(product.get("FREIGHT").toString()), cart.get("COLOR").toString(), cart.get("CART_SIZE").toString(), product.get("NAME").toString());
                Boolean isAddSale = productService.addSale(Integer.parseInt(productId), Integer.parseInt(amount));
                Boolean isSubStock = productService.subStock(Integer.parseInt(productId), Integer.parseInt(amount));
                cartService.doDeleteByCartId(Integer.parseInt(cartId));
            }
        }
        req.getRequestDispatcher("/WEB-INF/views/udai_order.jsp").forward(req,resp);
    }
}
