package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.AddressDao;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class AddressDaoImpl extends CommonDao implements AddressDao {
    @Override
    public List<Map<String,Object>> queryByUserId(Integer userId) {
        String sql = "SELECT * FROM ADDRESS WHERE USER_ID = ? AND IS_DELETE = 0";
        return query4MapList(sql,userId);
    }

    @Override
    public Map<String, Object> queryByAddressId(Integer addressId) {
        String sql = "SELECT * FROM ADDRESS WHERE ADDRESS_ID = ?";
        return query4Map(sql,addressId);
    }

    @Override
    public Map<String, Object> queryByOrderId(Integer orderId) {
        String sql = "SELECT * FROM ADDRESS WHERE ADDRESS_ID = (SELECT ADDRESS_ID FROM ORDERS WHERE ORDERS_ID = ?)";
        return query4Map(sql,orderId);
    }

    @Override
    public Integer ClearDefaultAddress() {
        String sql = "UPDATE ADDRESS SET IS_DEFAULT = 0";
        return executeUpdate(sql);
    }

    @Override
    public Integer doInsert(Map<String, Object> map) {
        String sql = "INSERT INTO ADDRESS (ADDRESS_ID, NAME, TEL, ADDRESS_DETAIL, USER_ID, IS_DEFAULT, IS_DELETE, ADD_TIME) VALUES (SEQ_ADDRESS.nextval,?,?,?,?,?,0,sysdate)";
        return executeUpdate(sql,map.get("name"),map.get("tel"),map.get("addressDetail"),map.get("userId"),map.get("isDefault"));
    }
}
