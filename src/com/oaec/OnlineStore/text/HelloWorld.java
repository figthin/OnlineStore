package com.oaec.OnlineStore.text;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.dao.CartDao;
import com.oaec.OnlineStore.dao.Class2Dao;
import com.oaec.OnlineStore.dao.OrderDetailDao;
import com.oaec.OnlineStore.dao.UserDao;
import com.oaec.OnlineStore.dao.impl.CartDaoImpl;
import com.oaec.OnlineStore.dao.impl.Class2DaoImpl;
import com.oaec.OnlineStore.dao.impl.OrderDetailDaoImpl;
import com.oaec.OnlineStore.dao.impl.UserDaoImpl;
import com.oaec.OnlineStore.entity.Class1;
import com.oaec.OnlineStore.entity.User;
import com.oaec.OnlineStore.service.CartService;
import com.oaec.OnlineStore.service.OrderDetailService;
import com.oaec.OnlineStore.service.UserService;
import com.oaec.OnlineStore.service.impl.CartServiceImpl;
import com.oaec.OnlineStore.service.impl.OrderServiceImpl;
import com.oaec.OnlineStore.service.impl.UserServiceImpl;

import java.util.List;
import java.util.Map;

public class HelloWorld {
    public static void main(String[] args) {
        OrderServiceImpl orderService = new OrderServiceImpl();
        Map<String, List<Map<String, Object>>> ordersByStatus = orderService.getOrdersByStatus(1004);
        System.out.println(JSON.toJSONString(ordersByStatus));
    }
}
