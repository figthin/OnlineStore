package com.oaec.OnlineStore.servlet;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.service.AddressService;
import com.oaec.OnlineStore.service.impl.AddressServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/updateAddress")
public class UpdateAddressServlet extends HttpServlet {
    private AddressService addressService = new AddressServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Map<String,Object> user = (Map<String, Object>) session.getAttribute("user");
        int user_id = Integer.parseInt(user.get("USER_ID").toString());
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter writer = resp.getWriter();
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String tel = req.getParameter("tel");
        Boolean isDefault = Boolean.parseBoolean(req.getParameter("isDefault"));
        if (isDefault){
            addressService.clearDefaultAddress();
        }
        Boolean aBoolean = addressService.addAddress(name, tel, address, user_id, isDefault ? 1 : 0);
        Map<String,Object> json = new HashMap<>();
        json.put("result",aBoolean);
        writer.println(JSON.toJSONString(json));
        writer.close();
    }
}
