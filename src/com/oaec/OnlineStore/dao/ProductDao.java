package com.oaec.OnlineStore.dao;

import com.oaec.OnlineStore.entity.Product;

import java.util.List;
import java.util.Map;

public interface ProductDao {
    List<Map<String,Object>> queryAll();

    List<Map<String,Object>> queryLike(String name);

    List<Map<String,Object>> queryByClass1Id(Integer class1Id);

    List<Map<String,Object>> queryByClass2Id(Integer class2Id);

    Map<String,Object> queryByProductId(Integer productId);

    Integer updateSale(Integer productId,Integer num);

    Integer updateStock(Integer productId,Integer num);

    List<Map<String,Object>> queryBySaleDesc();
}
