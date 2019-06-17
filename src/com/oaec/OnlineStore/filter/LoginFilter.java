package com.oaec.OnlineStore.filter;

import com.oaec.OnlineStore.util.HttpFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter({"/cart","/welcome","/order","/integral"})
public class LoginFilter extends HttpFilter {
    @Override
    public void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws IOException, ServletException {
        if (request.getSession().getAttribute("user") == null){
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
        filterChain.doFilter(request,response);
    }
}
