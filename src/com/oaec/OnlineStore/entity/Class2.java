package com.oaec.OnlineStore.entity;

import java.util.Date;
import java.util.List;

public class Class2 {
    private Integer isDelete;
    private Date addTime;
    private Integer class1Id;
    private Integer class2Id;
    private String class2Name;

    public Class2() {
    }

    public Class2(Integer isDelete, Date addTime, Integer class1Id, Integer class2Id, String class2Name) {
        this.isDelete = isDelete;
        this.addTime = addTime;
        this.class1Id = class1Id;
        this.class2Id = class2Id;
        this.class2Name = class2Name;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Integer getClass1Id() {
        return class1Id;
    }

    public void setClass1Id(Integer class1Id) {
        this.class1Id = class1Id;
    }

    public Integer getClass2Id() {
        return class2Id;
    }

    public void setClass2Id(Integer class2Id) {
        this.class2Id = class2Id;
    }

    public String getClass2Name() {
        return class2Name;
    }

    public void setClass2Name(String class2Name) {
        this.class2Name = class2Name;
    }

    @Override
    public String toString() {
        return "Class1{" +
                "isDelete=" + isDelete +
                ", addTime=" + addTime +
                ", class1Id=" + class1Id +
                ", class2Id=" + class2Id +
                ", class2Name=" + class2Name +
                '}';
    }
}

