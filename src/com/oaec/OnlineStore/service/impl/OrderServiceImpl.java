package com.oaec.OnlineStore.service.impl;

import com.alibaba.fastjson.JSON;
import com.oaec.OnlineStore.dao.AddressDao;
import com.oaec.OnlineStore.dao.OrderDao;
import com.oaec.OnlineStore.dao.OrderDetailDao;
import com.oaec.OnlineStore.dao.impl.AddressDaoImpl;
import com.oaec.OnlineStore.dao.impl.OrderDaoImpl;
import com.oaec.OnlineStore.dao.impl.OrderDetailDaoImpl;
import com.oaec.OnlineStore.service.OrderService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderServiceImpl implements OrderService {
    private OrderDao orderDao = new OrderDaoImpl();
    private OrderDetailDao orderDetailDao = new OrderDetailDaoImpl();
    private AddressDao addressDao = new AddressDaoImpl();

    @Override
    public List<Map<String, Object>> getOrders(Integer userId) {
        List<Map<String, Object>> list = orderDao.queryOrdersByUserId(userId);
        for (Map<String, Object> map : list) {
            int orders_id = Integer.parseInt(map.get("ORDERS_ID").toString());
            Map<String, Object> address = addressDao.queryByOrderId(orders_id);
            map.put("address",address);
            Double totalPrice = orderDetailDao.queryTotalPriceByOrderId(orders_id);
            map.put("totalPrice",totalPrice);
            List<Map<String, Object>> products = orderDetailDao.query(orders_id);
            map.put("products",products);
        }
        return list;
    }

    @Override
    public Boolean addOrder(Integer orderId,Integer userId,Integer addressId) {
        Map<String,Object> map = new HashMap<>();
        map.put("orderId",orderId);
        map.put("userId",userId);
        map.put("addressId",addressId);
        return orderDao.doInsert(map) == 1;
    }

    @Override
    public Integer getOrderId() {
        return orderDao.queryOrderId();
    }

    @Override
    public List<Map<String, Object>> getLatestOrders(Integer userId) {
        return orderDao.queryLatestOrders(userId);
    }

    @Override
    public Map<String, List<Map<String, Object>>> getOrdersByStatus(Integer userId) {
        List<Map<String, Object>> order0 = orderDao.queryByOrderStatusIs0(userId);
        List<Map<String, Object>> order1 = orderDao.queryByOrderStatusIs1(userId);
        List<Map<String, Object>> order2 = orderDao.queryByOrderStatusIs2(userId);
        Map<String, List<Map<String, Object>>> map = new HashMap<>();
        map.put("status0",order0);
        map.put("status1",order1);
        map.put("status2",order2);
        return map;
    }

}
