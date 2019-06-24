package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.AddressDao;
import com.oaec.OnlineStore.dao.OrderDao;
import com.oaec.OnlineStore.dao.OrderDetailDao;
import com.oaec.OnlineStore.dao.impl.AddressDaoImpl;
import com.oaec.OnlineStore.dao.impl.OrderDaoImpl;
import com.oaec.OnlineStore.dao.impl.OrderDetailDaoImpl;
import com.oaec.OnlineStore.service.OrderDetailService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderDetailServiceImpl implements OrderDetailService {
    private OrderDetailDao orderDetailDao = new OrderDetailDaoImpl();
    private OrderDao orderDao = new OrderDaoImpl();
    private AddressDao addressDao = new AddressDaoImpl();
    @Override
    public Map<String, Object> getOrderDetailByOrderId(Integer orderId) {
        Map<String, Object> map = orderDao.queryByOrderId(orderId);
        Map<String, Object> address = addressDao.queryByOrderId(orderId);
        Double totalPrice = orderDetailDao.queryTotalPriceByOrderId(orderId);
        map.put("totalPrice",totalPrice);
        map.put("address",address);
        List<Map<String, Object>> products = orderDetailDao.query(orderId);
        map.put("products",products);
        return map;
    }

    @Override
    public Boolean addOrderDetail(Integer orderId, Integer productId, Double price, String url, int amount, double freight, String color, String size, String name) {
        Map<String,Object> map = new HashMap<>();
        map.put("orderId",orderId);
        map.put("productId",productId);
        map.put("price",price);
        map.put("url",url);
        map.put("amount",amount);
        map.put("freight",freight);
        map.put("color",color);
        map.put("size",size);
        map.put("name",name);
        return orderDetailDao.doInsert(map) == 1;
    }
}
