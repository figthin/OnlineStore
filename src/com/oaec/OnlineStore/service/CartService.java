package com.oaec.OnlineStore.service;

import java.util.List;
import java.util.Map;

public interface CartService {
    List<Map<String, Object>> getProductByUserId(Integer userId);
    Map<String,Object> getTotalPrice(Integer userId);
    Boolean deleteCartProduct(Integer cartId);
}
