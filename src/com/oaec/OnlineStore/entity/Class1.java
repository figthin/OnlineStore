package com.oaec.OnlineStore.entity;

import java.util.Date;
import java.util.List;

public class Class1 {
    private Integer isDelete;
    private Date addTime;
    private Integer class1Id;
    private String class1Name;
    List<Class2> children;

    public Class1() {
    }

    public Class1(Integer isDelete, Date addTime, Integer class1Id, String class1Name, List<Class2> children) {
        this.isDelete = isDelete;
        this.addTime = addTime;
        this.class1Id = class1Id;
        this.class1Name = class1Name;
        this.children = children;
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

    public String getClass1Name() {
        return class1Name;
    }

    public void setClass1Name(String class1Name) {
        this.class1Name = class1Name;
    }

    public List<Class2> getChildren() {
        return children;
    }

    public void setChildren(List<Class2> children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "Class1{" +
                "isDelete=" + isDelete +
                ", addTime=" + addTime +
                ", class1Id=" + class1Id +
                ", class1Name=" + class1Name +
                ", children=" + children +
                '}';
    }
}

