package com.oaec.OnlineStore.dao.impl;

import com.oaec.OnlineStore.dao.Class1Dao;
import com.oaec.OnlineStore.dao.Class2Dao;
import com.oaec.OnlineStore.entity.Class1;
import com.oaec.OnlineStore.entity.Class2;
import com.oaec.OnlineStore.util.CommonDao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class Class2DaoImpl extends CommonDao implements Class2Dao, CommonDao.GetBean<Class2> {
    private Class1Dao class1Dao = new Class1DaoImpl();
    @Override
    public List<Class1> query() {
        List<Class1> query = class1Dao.query();
        for (Class1 class1 : query) {
            Integer class1Id = class1.getClass1Id();
            String sql = "SELECT * FROM CLASS2 WHERE CLASS1_ID = ?";
            List<Class2> class2s = query4BeanList(sql, this, class1Id);
            class1.setChildren(class2s);
        }
        return query;
    }

    @Override
    public Class2 getBeanFromResultSet(ResultSet rs) throws SQLException {
        Class2 class2 = new Class2();
        class2.setClass1Id(rs.getInt("CLASS1_ID"));
        class2.setClass2Id(rs.getInt("CLASS2_ID"));
        class2.setClass2Name(rs.getString("CLASS2_NAME"));
        class2.setAddTime(rs.getDate("ADD_TIME"));
        class2.setIsDelete(rs.getInt("IS_DELETE"));
        return class2;
    }
}
