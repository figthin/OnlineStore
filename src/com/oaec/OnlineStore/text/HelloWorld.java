package com.oaec.OnlineStore.text;

import com.oaec.OnlineStore.dao.CartDao;
import com.oaec.OnlineStore.dao.Class2Dao;
import com.oaec.OnlineStore.dao.UserDao;
import com.oaec.OnlineStore.dao.impl.CartDaoImpl;
import com.oaec.OnlineStore.dao.impl.Class2DaoImpl;
import com.oaec.OnlineStore.dao.impl.UserDaoImpl;
import com.oaec.OnlineStore.entity.Class1;
import com.oaec.OnlineStore.entity.User;
import com.oaec.OnlineStore.service.CartService;
import com.oaec.OnlineStore.service.UserService;
import com.oaec.OnlineStore.service.impl.CartServiceImpl;
import com.oaec.OnlineStore.service.impl.UserServiceImpl;

import java.util.List;
import java.util.Map;

public class HelloWorld {
    public static void main(String[] args) {
        CartServiceImpl cartService = new CartServiceImpl();
        Map<String, Object> total = cartService.getTotal(1004, new String[]{"5003"});
        System.out.println("total = " + total);

    }
}
