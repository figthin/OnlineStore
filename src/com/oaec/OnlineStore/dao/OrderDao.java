package com.oaec.OnlineStore.dao;

import java.util.List;
import java.util.Map;

public interface OrderDao {
    List<Map<String,Object>> queryOrdersByUserId(Integer userId);

    Map<String,Object> queryByOrderId(Integer orderId);

    Integer doInsert(Map<String,Object> map);

    Integer queryOrderId();
}

