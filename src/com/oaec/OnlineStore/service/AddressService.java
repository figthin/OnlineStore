package com.oaec.OnlineStore.service;

import java.util.List;
import java.util.Map;

public interface AddressService {
    List<Map<String,Object>> getAddress(Integer userId);

    Boolean addAddress(String name,String tel,String addressDetail,Integer userId,Integer isDefault);

    Boolean clearDefaultAddress();

    Map<String,Object> getByAddressId(Integer addressId);
}
