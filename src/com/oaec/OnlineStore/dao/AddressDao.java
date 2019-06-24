package com.oaec.OnlineStore.dao;


import java.util.List;
import java.util.Map;

public interface AddressDao {
    List<Map<String,Object>> queryByUserId(Integer userId);

    Map<String ,Object> queryByAddressId(Integer addressId);

    Map<String,Object> queryByOrderId(Integer addressId);

    Integer ClearDefaultAddress();

    Integer doInsert(Map<String,Object> map);
}
