package com.oaec.OnlineStore.service;

import com.oaec.OnlineStore.entity.User;

import java.util.Map;

public interface UserService {
    Map<String,Object> login(String tel, String password);

    Map<String, Object> register(String tel, String password, String password2);
}
