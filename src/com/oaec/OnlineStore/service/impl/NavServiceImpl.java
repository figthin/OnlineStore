package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.CategoryDao;
import com.oaec.OnlineStore.dao.Class2Dao;
import com.oaec.OnlineStore.dao.impl.CategoryDaoImpl;
import com.oaec.OnlineStore.dao.impl.Class2DaoImpl;
import com.oaec.OnlineStore.entity.Class1;
import com.oaec.OnlineStore.service.NavService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NavServiceImpl implements NavService {
    private CategoryDao categoryDao = new CategoryDaoImpl();
    private Class2Dao class2Dao = new Class2DaoImpl();
    @Override
    public Map<String,List<Map<String,Object>>> getNav() {
        List<Map<String, Object>> maps3 = categoryDao.queryClass3();
        List<Map<String, Object>> maps2 = categoryDao.queryClass2();
        List<Map<String, Object>> maps1 = categoryDao.queryClass1();
        Map<String,List<Map<String,Object>>> map = new HashMap<>();
        map.put("一级分类",maps1);
        map.put("二级分类",maps2);
        map.put("三级分类",maps3);
        return map;
    }

    @Override
    public List<Class1> getNavs() {
        List<Class1> query = class2Dao.query();
        return query;
    }


    @Override
    public List<Map<String, Object>> getNav2(String class1Id) {
        return categoryDao.queryClass2ByClass1(Integer.parseInt(class1Id));
    }

    @Override
    public List<Map<String, Object>> getNav3(String class2Id) {
        return categoryDao.queryClass3ByClass2(Integer.parseInt(class2Id));
    }

    @Override
    public List<Map<String, Object>> getNav4(String class3Id) {
        return categoryDao.queryProductByClass3(Integer.parseInt(class3Id));
    }


}
