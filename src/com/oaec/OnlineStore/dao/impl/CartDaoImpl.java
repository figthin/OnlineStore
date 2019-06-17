package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.CartDao;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class CartDaoImpl extends CommonDao implements CartDao {
    @Override
    public List<Map<String, Object>> queryByUserId(Integer userId) {
        String sql = "SELECT PRODUCT.URL,CART.AMOUNT,PRODUCT.NAME,PRODUCT.PRICE PRODUCTPRICE,CART.PRICE CARTPRICE,CART.COLOR,CART.CART_SIZE FROM CART,PRODUCT WHERE CART.PRODUCT_ID = PRODUCT.PRODUCT_ID AND USER_ID = ?";
        return query4MapList(sql,userId);
    }

    @Override
    public Map<String,Object> queryTotalPrice(Integer userId) {
        String sql = "SELECT SUM(CART.PRICE * CART.AMOUNT) total FROM CART WHERE USER_ID = ?";
        Map<String, Object> map = query4Map(sql,userId);
        return map;
    }

    @Override
    public Integer doDelete(Integer cartId) {
        String sql = "DELETE FROM CART WHERE CART_ID = ?";
        return executeUpdate(sql,cartId);
    }
}
