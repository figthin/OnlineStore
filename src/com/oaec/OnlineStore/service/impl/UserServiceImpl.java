package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.UserDao;
import com.oaec.OnlineStore.dao.impl.UserDaoImpl;
import com.oaec.OnlineStore.entity.User;
import com.oaec.OnlineStore.service.UserService;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.HashMap;
import java.util.Map;

public class UserServiceImpl extends CommonDao implements UserService {
    private UserDao userDao = new UserDaoImpl();
    @Override
    public Map<String,Object> login(String tel, String password) {
        Map<String, Object> login = userDao.queryByTel(tel);
        if (login == null){
            login = new HashMap<>();
//            Map<String,Object> login = new Map<String, Object>();
            //登录失败，用户不存在
            login.put("error","用户不存在！");
            return login;
        }else{
            //登录失败，密码错误
            if (!login.get("PASSWORD").equals(password)){
                login.clear();
                login.put("error","密码错误！");
                return login;
            }else{
                //登录成功
                return login;
            }
        }
    }

    @Override
    public Map<String, Object> register(String tel, String password, String password2) {
        Map<String, Object> map = new HashMap<>();
        if (!password.equals(password2)){
            map.put("error","注册失败，两次密码不一致！");
            return map;
        }
        User user = new User();
        user.setTel(tel);
        user.setPassword(password);
        Integer integer = userDao.doInsert(user);
        if (integer == 1) {
            map.put("succ",user);
            return map;
        }else {
            map.put("error","注册失败，用户已存在");
            return map;
        }
    }

    @Override
    public Map<String, Object> getUserByUserId(Integer userId) {
        return userDao.queryByUserId(userId);
    }

    @Override
    public Boolean modifyUserMessage(String userName, String gender, String birth, Integer userId) {
        Map<String,Object> map = new HashMap<>();
        map.put("userName",userName);
        map.put("gender",gender);
        map.put("birth",birth);
        map.put("userId",userId);
        return userDao.doUpdate(map) == 1;
    }

    @Override
    public Boolean charge(Integer userId, Integer money) {
        return userDao.doUpdate(userId,money) == 1;
    }

    @Override
    public Boolean checkIn(Integer userId) {
        return userDao.doUpdate(userId) == 1;
    }
}
