package com.oaec.OnlineStore.filter;

import com.oaec.OnlineStore.service.CartService;
import com.oaec.OnlineStore.service.impl.CartServiceImpl;
import com.oaec.OnlineStore.util.HttpFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebFilter({"/index","/item_show","/item_category"})
public class CartFilter extends HttpFilter {
    private CartService cartService = new CartServiceImpl();
    @Override
    public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        if (user==null){
            filterChain.doFilter(request,response);
            return;
        }
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        List<Map<String, Object>> productByUserId = cartService.getProductByUserId(user_id);
        request.setAttribute("productNumber",productByUserId.size());
        filterChain.doFilter(request,response);
    }
}
