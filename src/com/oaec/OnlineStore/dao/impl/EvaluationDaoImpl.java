package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.EvaluationDao;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class EvaluationDaoImpl extends CommonDao implements EvaluationDao {
    @Override
    public List<Map<String, Object>> queryByProductId(Integer productId) {
        String sql = "SELECT * FROM evaluation WHERE PRODUCT_ID = ?";
        return query4MapList(sql,productId);
    }

    @Override
    public Map<String,List<Map<String, Object>>> queryGradeByProductId(Integer productId) {
        String sql1 = "SELECT * FROM EVALUATION WHERE PRODUCT_ID = ? AND GRADE = '好评'";
        List<Map<String, Object>> list1 = query4MapList(sql1, productId);
        String sql2 = "SELECT * FROM EVALUATION WHERE PRODUCT_ID = ? AND GRADE = '中评'";
        List<Map<String, Object>> list2 = query4MapList(sql2, productId);
        String sql3 = "SELECT * FROM EVALUATION WHERE PRODUCT_ID = ? AND GRADE = '差评'";
        List<Map<String, Object>> list3 = query4MapList(sql3, productId);
        Map<String,List<Map<String,Object>>> map = new HashMap<>();
        map.put("好评",list1);
        map.put("中评",list2);
        map.put("差评",list3);
        return map;
    }
}
