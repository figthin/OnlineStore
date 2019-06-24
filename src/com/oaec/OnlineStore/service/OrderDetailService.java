package com.oaec.OnlineStore.service;

import java.util.List;
import java.util.Map;

public interface OrderDetailService {
    Map<String,Object> getOrderDetailByOrderId(Integer orderId);

    Boolean addOrderDetail(Integer orderId,Integer productId,Double price,String url,int amount,double freight,String color,String size,String name);
}
