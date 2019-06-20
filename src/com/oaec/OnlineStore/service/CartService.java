package com.oaec.OnlineStore.service;

import java.util.List;
import java.util.Map;

public interface CartService {

    List<Map<String, Object>> getProductByUserId(Integer userId);

    Map<String,Object> getTotalPrice(Integer userId);

    Boolean deleteCartProduct(Integer userId, Integer productId, String color, String size);

    Boolean addCartProduct(Integer userId, Integer productId, Integer amount, String color, String size);

    Boolean updateAmount(String action,Integer userId, Integer productId, String color, String size);

    Map<String,Object> getTotal(Integer userId, String[] cartIds);

    Map<String,Object> getTotalPrice(Integer cartId,Integer productId);
}
