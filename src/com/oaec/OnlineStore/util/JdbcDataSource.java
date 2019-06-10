package com.oaec.OnlineStore.util;

import com.alibaba.druid.pool.DruidDataSource;

public class JdbcDataSource {

    private static final String URL = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
    private static final String USER_NAME = "YXK";
    private static final String PASSWORD = "123456";
    private static DruidDataSource druidDataSource;

    static {
        druidDataSource = new DruidDataSource();
        druidDataSource.setUrl(URL);
        druidDataSource.setUsername(USER_NAME);
        druidDataSource.setPassword(PASSWORD);
    }

    public static DruidDataSource getDataSource(){
        return druidDataSource;
    }
}
