package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.Class1Dao;
import com.oaec.OnlineStore.entity.Class1;
import com.oaec.OnlineStore.util.CommonDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class Class1DaoImpl extends CommonDao implements Class1Dao, CommonDao.GetBean<Class1> {
    @Override
    public List<Class1> query() {
        String sql = "SELECT * FROM CLASS1";
        List<Class1> aClasses = query4BeanList(sql, this);
        /*for (Class1 aClass : aClasses) {
            Integer classesId = aClass.getClass1Id();
            sql = "SELECT * FROM CLASS2 WHERE CLASS1_ID = ?";
            List<Class1> classes1 = query4BeanList(sql, Class1.class, classesId);
            aClass.setChildren(classes1);
        }*/
        return aClasses;
    }

    @Override
    public Class1 getBeanFromResultSet(ResultSet rs) throws SQLException {
        Class1 class1 = new Class1();
        class1.setClass1Id(rs.getInt("CLASS1_ID"));
        class1.setAddTime(rs.getDate("ADD_TIME"));
        class1.setIsDelete(rs.getInt("IS_DELETE"));
        class1.setClass1Name(rs.getString("CLASS1_NAME"));
        return class1;
    }
}
