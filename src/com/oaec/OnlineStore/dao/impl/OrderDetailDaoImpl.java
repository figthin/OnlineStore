package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.OrderDetailDao;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class OrderDetailDaoImpl extends CommonDao implements OrderDetailDao {
    @Override
    public List<Map<String, Object>> query(Integer orderId) {
        String sql = "SELECT * FROM ORDERS_DETAIL WHERE ORDERS_ID = ?";
        return query4MapList(sql,orderId);
    }

    @Override
    public Double queryTotalPriceByOrderId(Integer orderId) {
        System.out.println("orderId = " + orderId);
        String sql = "SELECT sum(price*DISCOUNT*AMOUNT) totalPrice FROM ORDERS_DETAIL WHERE ORDERS_ID = ?";
        Map<String, Object> map = query4Map(sql, orderId);
        System.out.println("map = " + map);
        Double totalPrice = 0.0;
        if (query4MapList(sql,orderId) != null){
            totalPrice = Double.parseDouble(query4Map(sql,orderId).get("TOTALPRICE").toString());
            System.out.println("totalPrice = " + totalPrice);
            return totalPrice;

        }
        return totalPrice;
    }

    @Override
    public Integer doInsert(Map<String, Object> map) {
        System.out.println("map = " + map);
        String sql = "INSERT INTO ORDERS_DETAIL (ORDERS_DETAIL_ID, ORDERS_ID, PRODUCT_ID, PRICE, URL, AMOUNT, FREIGHT, COLOR, PRODUCT_SIZE, PRODUCT_STATUS, DISCOUNT, NAME) VALUES (SEQ_ORDERS_DETAIL.nextval,?,?,?,?,?,?,?,?,0,0.8,?)";
        return executeUpdate(sql,map.get("orderId"),map.get("productId"),map.get("price"),map.get("url"),map.get("amount"),map.get("freight"),map.get("color"),map.get("size"),map.get("name"));
    }
}
