package com.oaec.OnlineStore.dao;

import java.util.List;
import java.util.Map;

public interface CategoryDao {
    //查找三级分类
    List<Map<String,Object>> queryClass3();
    //查找二级分类
    List<Map<String,Object>> queryClass2();
    //查找一级分类
    List<Map<String,Object>> queryClass1();
    //根据一级分类查找二级分类
    List<Map<String,Object>> queryClass2ByClass1(Integer class1Id);
    //根据二级分类查找三级分类
    List<Map<String,Object>> queryClass3ByClass2(Integer class2Id);
    //根据三级分类查找商品
    List<Map<String,Object>> queryProductByClass3(Integer class3Id);
}
