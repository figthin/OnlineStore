package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.ProductDao;
import com.oaec.OnlineStore.entity.Product;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class ProductDaoImpl extends CommonDao implements ProductDao {
    @Override
    public List<Map<String, Object>> queryAll() {
        String sql = "SELECT * FROM product WHERE IS_DELETE = 0";
        List<Map<String, Object>> maps = query4MapList(sql);
        return maps;
    }

    @Override
    public List<Map<String, Object>> queryLike(String name) {
        String sql = "SELECT * FROM product WHERE UPPER(name) LIKE UPPER(?)";
        List<Map<String, Object>> maps = query4MapList(sql,"%" + name + "%");
        return maps;
    }

    @Override
    public List<Map<String, Object>> queryByClass1Id(Integer class1Id) {
        String sql = "SELECT * FROM PRODUCT WHERE CLASS_ID IN (SELECT CLASS3_ID FROM CLASS3 WHERE CLASS2_ID IN (SELECT CLASS2_ID FROM CLASS2 WHERE CLASS1_ID = ? AND IS_DELETE = 0) AND IS_DELETE = 0) AND IS_DELETE = 0";
        List<Map<String, Object>> list = query4MapList(sql, class1Id);
        return list;
    }

    @Override
    public List<Map<String, Object>> queryByClass2Id(Integer class2Id) {
        String sql = "SELECT * FROM PRODUCT WHERE CLASS_ID = (SELECT CLASS3_ID FROM CLASS3 WHERE CLASS2_ID = ? AND IS_DELETE = 0) AND IS_DELETE = 0";
        List<Map<String, Object>> list = query4MapList(sql, class2Id);
        return list;
    }

    @Override
    public Map<String,Object> queryByProductId(Integer productId) {
        String sql = "SELECT * FROM product WHERE PRODUCT_ID = ? AND IS_DELETE = 0";
        return query4Map(sql,productId);
    }

    @Override
    public Integer updateSale(Integer productId, Integer num) {
        String sql = "UPDATE PRODUCT SET SALE = SALE + ? WHERE PRODUCT_ID = ?";
        return executeUpdate(sql,productId,num);
    }

    @Override
    public Integer updateStock(Integer productId, Integer num) {
        String sql = "UPDATE PRODUCT SET STOCK = STOCK - ? WHERE PRODUCT_ID = ?";
        return executeUpdate(sql,productId,num);
    }

    @Override
    public List<Map<String, Object>> queryBySaleDesc() {
        String sql = "SELECT ROWNUM,temp.* FROM (SELECT * FROM product WHERE IS_DELETE = 0 ORDER BY SALE DESC) temp WHERE ROWNUM <= 6";
        return query4MapList(sql);
    }

}
