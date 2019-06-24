package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.CartDao;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class CartDaoImpl extends CommonDao implements CartDao {
    @Override
    public List<Map<String, Object>> queryByUserId(Integer userId) {
        String sql = "SELECT CART.CART_ID,PRODUCT.PRODUCT_ID,PRODUCT.URL,CART.AMOUNT,PRODUCT.NAME,PRODUCT.PRICE,CART.COLOR,CART.CART_SIZE FROM CART,PRODUCT WHERE CART.PRODUCT_ID = PRODUCT.PRODUCT_ID AND USER_ID = ?";
        return query4MapList(sql,userId);
    }

    @Override
    public Map<String,Object> queryTotalPrice(Integer userId) {
        String sql = "SELECT SUM(a.AMOUNT * b.PRICE) total FROM (SELECT PRODUCT_ID,AMOUNT FROM CART WHERE USER_ID = 1004) a,(SELECT PRODUCT_ID,PRICE FROM PRODUCT WHERE PRODUCT_ID IN (SELECT PRODUCT_ID FROM CART WHERE USER_ID = ?)) b WHERE a.PRODUCT_ID = b.PRODUCT_ID";
        Map<String, Object> map = query4Map(sql,userId);
        return map;
    }

    @Override
    public Integer doDelete(Map<String, Object> map) {
        String sql = "DELETE FROM CART WHERE USER_ID = ? AND PRODUCT_ID = ? AND COLOR = ? AND CART_SIZE = ?";
        return executeUpdate(sql,map.get("userId"),map.get("productId"),map.get("color"),map.get("size"));
    }

    @Override
    public Integer doInsert(Map<String, Object> map) {
        String sql = "INSERT INTO CART VALUES (SEQ_CART.nextval,?,?,?,?,?)";
        return executeUpdate(sql,map.get("userId"),map.get("productId"),map.get("amount"),map.get("color"),map.get("size"));
    }

    @Override
    public Map<String,Object> queryByProduct(Map<String, Object> map) {
        String sql = "SELECT * FROM CART WHERE PRODUCT_ID = ? AND USER_ID = ? AND COLOR = ? AND CART_SIZE = ?";
        return query4Map(sql,map.get("productId"),map.get("userId"),map.get("color"),map.get("size"));
    }

    @Override
    public Integer updateAmount(Map<String, Object> map) {
        String sql = "UPDATE CART SET AMOUNT = AMOUNT + ? WHERE USER_ID = ? AND PRODUCT_ID = ?";
        return executeUpdate(sql,map.get("amount"),map.get("userId"),map.get("productId"));
    }

    @Override
    public Integer addAmount(Map<String, Object> map) {
        String sql = "UPDATE CART SET AMOUNT = AMOUNT + 1 WHERE USER_ID = ? AND PRODUCT_ID = ? AND COLOR = ? AND CART_SIZE = ?";
        return executeUpdate(sql,map.get("userId"),map.get("productId"),map.get("color"),map.get("size"));
    }

    @Override
    public Integer subAmount(Map<String, Object> map) {
        String sql = "UPDATE CART SET AMOUNT = AMOUNT - 1 WHERE USER_ID = ? AND PRODUCT_ID = ? AND COLOR = ? AND CART_SIZE = ? AND AMOUNT > 1";
        return executeUpdate(sql,map.get("userId"),map.get("productId"),map.get("color"),map.get("size"));
    }

    @Override
    public Map<String, Object> queryTotal(Integer userId, String[] cartIds) {
        StringBuilder sql = new StringBuilder("SELECT SUM(CART.AMOUNT) totalAmount, SUM(PRODUCT.PRICE*CART.AMOUNT) allTotalPrice FROM CART,PRODUCT WHERE CART.PRODUCT_ID = PRODUCT.PRODUCT_ID AND CART.USER_ID = ? AND CART.CART_ID IN (");
        Object[] param = new Object[cartIds.length+1];
        param[0] = userId;
        for (int i = 0; i < cartIds.length; i++) {
            sql.append("?,");
            param[i + 1] = cartIds[i];
        }
        sql.deleteCharAt(sql.length() - 1);
        sql.append(")");
        return query4Map(sql.toString(),param);
    }

    @Override
    public Map<String, Object> queryTotalPrice(Integer cartId, Integer productId) {
        String sql = "SELECT CART.AMOUNT * PRODUCT.PRICE totalPrice FROM CART,PRODUCT WHERE CART.PRODUCT_ID = PRODUCT.PRODUCT_ID AND CART.CART_ID = ? AND CART.PRODUCT_ID = ?";
        return query4Map(sql,cartId,productId);
    }

    @Override
    public Map<String, Object> queryByCartId(String cartId) {
        String sql = "SELECT * FROM CART WHERE CART_ID = ?";
        return query4Map(sql,cartId);
    }

    @Override
    public Integer doDeleteByCartId(Integer cartId) {
        String sql = "DELETE FROM CART WHERE CART_ID = ?";
        return executeUpdate(sql,cartId);
    }

}
