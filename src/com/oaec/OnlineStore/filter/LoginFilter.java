package com.oaec.OnlineStore.filter;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.util.HttpFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebFilter({"/cart","/welcome","/order","/integral","/addCart","/order_detail","/shopcart_pay","/address","/setting","/treasurer"})
public class LoginFilter extends HttpFilter {

    private boolean isAjax(HttpServletRequest request){
        String header = request.getHeader("X-Requested-With");
        if (header != null && header.equals("XMLHttpRequest")){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Object username = session.getAttribute("user");
        if(username == null){
            String requestURI = request.getRequestURI();
            if(requestURI.contains("/addCart")){
                requestURI = request.getContextPath()+"/item_show?productId="+request.getParameter("productId");
            }
            String queryString = request.getQueryString();
            if (isAjax(request)){
                response.setContentType("application/json;charset=utf-8");
                PrintWriter writer = response.getWriter();
                Map<String,Object> map = new HashMap<>();
                map.put("uri",requestURI);
                map.put("isLogin", false);
                writer.println(JSON.toJSONString(map));
                writer.close();
            }else {
                if (queryString != null){
                    requestURI += "?"+queryString;
                }
//                response.sendRedirect(request.getContextPath()+"/WEB-INF/views/login.jsp?uri="+requestURI);
                response.sendRedirect(request.getContextPath()+"/login?uri="+requestURI);
            }
        }else{
            filterChain.doFilter(request,response);
        }
    }
}
