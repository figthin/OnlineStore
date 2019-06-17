package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.CategoryDao;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class CategoryDaoImpl extends CommonDao implements CategoryDao {
    @Override
    public List<Map<String, Object>> queryClass3() {
        String sql = "SELECT * FROM CLASS3 WHERE CLASS3_ID IN (SELECT CLASS_ID FROM PRODUCT WHERE IS_DELETE = 0 GROUP BY CLASS_ID) AND IS_DELETE = 0";
        List<Map<String, Object>> maps = query4MapList(sql);
        return maps;
    }

    @Override
    public List<Map<String, Object>> queryClass2() {
        String sql = "SELECT * FROM CLASS2 WHERE CLASS2_ID IN (SELECT CLASS2_ID FROM CLASS3 WHERE CLASS3_ID IN (SELECT CLASS_ID FROM PRODUCT WHERE IS_DELETE = 0 GROUP BY CLASS_ID) AND IS_DELETE = 0) AND IS_DELETE = 0";
        return query4MapList(sql);
    }

    @Override
    public List<Map<String, Object>> queryClass1() {
        String sql = "SELECT * FROM CLASS1 WHERE CLASS1_ID IN (SELECT CLASS1_ID FROM CLASS2 WHERE CLASS2_ID IN (SELECT CLASS2_ID FROM CLASS3 WHERE CLASS3_ID IN (SELECT CLASS_ID FROM PRODUCT WHERE IS_DELETE = 0 GROUP BY CLASS_ID) AND IS_DELETE = 0) AND IS_DELETE = 0) AND IS_DELETE = 0";
        return query4MapList(sql);
    }

    @Override
    public List<Map<String, Object>> queryClass2ByClass1(Integer class1Id) {
        String sql = "SELECT * FROM class2 WHERE CLASS1_ID = ? AND IS_DELETE = 0";
        return query4MapList(sql,class1Id);
    }

    @Override
    public List<Map<String, Object>> queryClass3ByClass2(Integer class2Id) {
        String sql = "SELECT * FROM class3 WHERE CLASS2_ID = ? AND IS_DELETE = 0";
        return query4MapList(sql,class2Id);
    }

    @Override
    public List<Map<String, Object>> queryProductByClass3(Integer class3Id) {
        String sql = "SELECT * FROM product WHERE CLASS3_ID = ? AND IS_DELETE = 0";
        return query4MapList(sql,class3Id);
    }
}
