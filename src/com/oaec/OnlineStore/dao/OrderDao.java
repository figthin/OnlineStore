package com.oaec.OnlineStore.dao;

import java.util.List;
import java.util.Map;

public interface OrderDao {
    List<Map<String,Object>> queryOrdersByUserId(Integer userId);

    Map<String,Object> queryByOrderId(Integer orderId);

    Integer doInsert(Map<String,Object> map);

    Integer queryOrderId();

    List<Map<String,Object>> queryLatestOrders(Integer userId);

    List<Map<String,Object>> queryByOrderStatusIs0(Integer userId);

    List<Map<String,Object>> queryByOrderStatusIs1(Integer userId);

    List<Map<String,Object>> queryByOrderStatusIs2(Integer userId);
}

