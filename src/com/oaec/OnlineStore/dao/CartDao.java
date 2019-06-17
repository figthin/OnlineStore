package com.oaec.OnlineStore.dao;

import java.util.List;
import java.util.Map;

public interface CartDao {
    List<Map<String,Object>> queryByUserId(Integer userId);

    Map<String,Object> queryTotalPrice(Integer userId);

    Integer doDelete(Integer cartId);
}
