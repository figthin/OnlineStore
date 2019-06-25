package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.OrderDao;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class OrderDaoImpl extends CommonDao implements OrderDao {
    @Override
    public List<Map<String, Object>> queryOrdersByUserId(Integer userId) {
        String sql = "SELECT * FROM ORDERS WHERE USER_ID = ? AND ISDELETE = 0";
        return query4MapList(sql,userId);
    }

    @Override
    public Map<String, Object> queryByOrderId(Integer orderId) {
        String sql = "SELECT * FROM ORDERS WHERE ORDERS_ID = ?";
        return query4Map(sql,orderId);
    }

    @Override
    public Integer doInsert(Map<String, Object> map) {
        String sql = "INSERT INTO ORDERS (ORDERS_ID,USER_ID,TIME_CREATE,TRADING_STATUS,OPERATE,ORDER_STATUS,ISDELETE,ADDRESS_ID) VALUES (?,?,sysdate,0,0,0,0,?)";
        return executeUpdate(sql,map.get("orderId"),map.get("userId"),map.get("addressId"));
    }

    @Override
    public Integer queryOrderId() {
        String sql = "SELECT SEQ_ORDERS.nextval orderId FROM dual";
        return Integer.parseInt(query4Map(sql).get("ORDERID").toString());
    }

    @Override
    public List<Map<String, Object>> queryLatestOrders(Integer userId) {
        String sql = "SELECT ROWNUM,temp.* FROM (SELECT * FROM ORDERS WHERE USER_ID = ? ORDER BY TIME_CREATE DESC) temp WHERE ROWNUM <= 3";
        return query4MapList(sql,userId);
    }

    @Override
    public List<Map<String, Object>> queryByOrderStatusIs0(Integer userId) {
        String sql = "SELECT * FROM ORDERS WHERE ORDER_STATUS = 0 AND USER_ID = ?";
        return query4MapList(sql,userId);
    }

    @Override
    public List<Map<String, Object>> queryByOrderStatusIs1(Integer userId) {
        String sql = "SELECT * FROM ORDERS WHERE ORDER_STATUS = 1 AND USER_ID = ?";
        return query4MapList(sql,userId);
    }

    @Override
    public List<Map<String, Object>> queryByOrderStatusIs2(Integer userId) {
        String sql = "SELECT * FROM ORDERS WHERE ORDER_STATUS = 2 AND USER_ID = ?";
        return query4MapList(sql,userId);
    }

}
