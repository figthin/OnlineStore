package com.oaec.OnlineStore.service;

import com.sun.org.apache.xpath.internal.operations.Bool;

import java.util.List;
import java.util.Map;

public interface OrderService {
    List<Map<String,Object>> getOrders(Integer userId);

    Boolean addOrder(Integer orderId,Integer userId,Integer addressId);

    Integer getOrderId();

    List<Map<String,Object>> getLatestOrders(Integer userId);

    Map<String,List<Map<String,Object>>> getOrdersByStatus(Integer userId);
}
