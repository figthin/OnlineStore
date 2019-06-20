package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.CartDao;
import com.oaec.OnlineStore.dao.impl.CartDaoImpl;
import com.oaec.OnlineStore.service.CartService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CartServiceImpl implements CartService {
    private CartDao cartDao = new CartDaoImpl();

    @Override
    public List<Map<String, Object>> getProductByUserId(Integer userId) {
        return cartDao.queryByUserId(userId);
    }

    @Override
    public Map<String,Object> getTotalPrice(Integer userId) {
        return cartDao.queryTotalPrice(userId);
    }

    @Override
    public Boolean deleteCartProduct(Integer userId, Integer productId, String color, String size) {
        Map<String, Object> map = new HashMap<>();
        map.put("userId",userId);
        map.put("productId",productId);
        map.put("color",color);
        map.put("size",size);
        Integer integer = cartDao.doDelete(map);
        return integer == 1;
    }

    @Override
    public Boolean addCartProduct(Integer userId, Integer productId, Integer amount, String color, String size) {
        Map<String, Object> map = new HashMap<>();
        map.put("userId",userId);
        map.put("productId",productId);
        map.put("amount",amount);
        map.put("color",color);
        map.put("size",size);
        Map<String, Object> map1 = cartDao.queryByProduct(map);
        if (map1 == null){
            //执行添加操作
            return cartDao.doInsert(map) == 1;
        }else {
            //执行更新数量操作
            return cartDao.updateAmount(map) == 1;
        }
    }

    @Override
    public Boolean updateAmount(String action, Integer userId, Integer productId, String color, String size) {
        Map<String,Object> map = new HashMap<>();
        map.put("userId",userId);
        map.put("productId",productId);
        map.put("color",color);
        map.put("size",size);
        if ("add".equals(action)){
            return cartDao.addAmount(map) == 1;
        }else {
            return cartDao.subAmount(map) == 1;
        }
    }

    @Override
    public Map<String, Object> getTotal(Integer userId, String[] cartIds) {
        return cartDao.queryTotal(userId,cartIds);
    }

    @Override
    public Map<String, Object> getTotalPrice(Integer cartId, Integer productId) {
        return cartDao.queryTotalPrice(cartId,productId);
    }

}
