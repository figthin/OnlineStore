package com.oaec.OnlineStore.service;

import com.oaec.OnlineStore.entity.User;
import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.Map;

public interface UserService {
    Map<String,Object> login(String tel, String password);

    Map<String, Object> register(String tel, String password, String password2);

    Map<String,Object> getUserByUserId(Integer userId);

    Boolean modifyUserMessage(String userName,String gender,String birth,Integer userId);

    Boolean charge(Integer userId,Integer money);

    Boolean checkIn(Integer userId);
}
