package com.oaec.OnlineStore.service;

import com.oaec.OnlineStore.entity.Class1;

import java.util.List;
import java.util.Map;

public interface NavService {
    Map<String,List<Map<String,Object>>> getNav();

    List<Class1> getNavs();

    List<Map<String,Object>> getNav2(String class1Id);

    List<Map<String,Object>> getNav3(String class2Id);

    List<Map<String,Object>> getNav4(String class3Id);
}
