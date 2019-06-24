package com.oaec.OnlineStore.service;


import java.util.List;
import java.util.Map;

public interface ProductService {
    List<Map<String, Object>> query(String name, String class1Id, String class2Id);

    Map<String,Object> queryById(String productId);

    Boolean addSale(Integer productId,Integer num);

    Boolean subStock(Integer productId,Integer num);

    List<Map<String,Object>> getHotProducts();
}
