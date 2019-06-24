package com.oaec.OnlineStore.dao;

import java.util.List;
import java.util.Map;

public interface OrderDetailDao {
    List<Map<String,Object>> query(Integer orderId);

    Double queryTotalPriceByOrderId(Integer orderId);

    Integer doInsert(Map<String,Object> map);
}
