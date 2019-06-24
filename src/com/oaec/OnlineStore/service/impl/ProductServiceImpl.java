package com.oaec.OnlineStore.service.impl;

import com.oaec.OnlineStore.dao.ProductDao;
import com.oaec.OnlineStore.dao.impl.ProductDaoImpl;
import com.oaec.OnlineStore.service.ProductService;
import com.oaec.OnlineStore.util.CommonDao;

import java.util.List;
import java.util.Map;

public class ProductServiceImpl extends CommonDao implements ProductService {
    private ProductDao productDao = new ProductDaoImpl();

    @Override
    public List<Map<String, Object>> query(String name, String class1Id, String class2Id) {
        if (class2Id != null){
            return productDao.queryByClass2Id(Integer.parseInt(class2Id));
        }
        if (class1Id != null){
            return productDao.queryByClass1Id(Integer.parseInt(class1Id));
        }
        if(name != null){
            return productDao.queryLike(name);
        }else{
            return productDao.queryAll();
        }
    }

    @Override
    public Map<String,Object> queryById(String productId) {
        return productDao.queryByProductId(Integer.parseInt(productId));
    }

    @Override
    public Boolean addSale(Integer productId, Integer num) {
        return productDao.updateSale(productId,num) == 1;
    }

    @Override
    public Boolean subStock(Integer productId, Integer num) {
        return productDao.updateStock(productId,num) == 1;
    }

    @Override
    public List<Map<String, Object>> getHotProducts() {
        return productDao.queryBySaleDesc();
    }
}
