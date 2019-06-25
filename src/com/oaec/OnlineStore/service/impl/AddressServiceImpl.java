package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.AddressDao;
import com.oaec.OnlineStore.dao.impl.AddressDaoImpl;
import com.oaec.OnlineStore.service.AddressService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AddressServiceImpl implements AddressService {
    private AddressDao addressDao = new AddressDaoImpl();
    @Override
    public List<Map<String,Object>> getAddress(Integer userId) {
        return addressDao.queryByUserId(userId);
    }

    @Override
    public Boolean addAddress(String name, String tel, String addressDetail, Integer userId, Integer isDefault) {
        Map<String,Object> map = new HashMap<>();
        map.put("name",name);
        map.put("tel",tel);
        map.put("addressDetail",addressDetail);
        map.put("userId",userId);
        map.put("isDefault",isDefault);
        return addressDao.doInsert(map) == 1;
    }

    @Override
    public Boolean clearDefaultAddress() {
        return addressDao.ClearDefaultAddress() > 0;
    }

    @Override
    public Map<String, Object> getByAddressId(Integer addressId) {
        return addressDao.queryByAddressId(addressId);
    }
}
