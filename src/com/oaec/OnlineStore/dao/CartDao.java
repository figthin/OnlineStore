package com.oaec.OnlineStore.dao;

import java.util.List;
import java.util.Map;

public interface CartDao {
    List<Map<String,Object>> queryByUserId(Integer userId);

    Map<String,Object> queryTotalPrice(Integer userId);

    Integer doDelete(Map<String, Object> map);

    Integer doInsert(Map<String, Object> map);

    Map<String,Object> queryByProduct(Map<String, Object> map);

    Integer updateAmount(Map<String, Object> map);

    Integer addAmount(Map<String, Object> map);

    Integer subAmount(Map<String, Object> map);

    Map<String,Object> queryTotal(Integer userId, String[] cartIds);

    Map<String,Object> queryTotalPrice(Integer cartId,Integer productId);

}
