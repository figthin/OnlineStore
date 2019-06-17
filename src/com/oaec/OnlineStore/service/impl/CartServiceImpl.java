package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.CartDao;
import com.oaec.OnlineStore.dao.impl.CartDaoImpl;
import com.oaec.OnlineStore.service.CartService;

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
    public Boolean deleteCartProduct(Integer cartId) {
        Integer integer = cartDao.doDelete(cartId);
        return integer == 1;
    }
}
