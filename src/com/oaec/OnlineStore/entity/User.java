package com.oaec.OnlineStore.entity;

import java.util.Date;

public class User {
    private Integer userId;
    private String userName;
    private String password;
    private Integer isDelete;
    private Integer integral;
    private Integer isMember;
    private Integer balance;
    private String gender;
    private Date birth;
    private Date registerTime;
    private Integer payPassword;
    private String tel;
    private Integer checkIn;

    public User() {
    }

    public User(Integer userId, String userName, String password, Integer isDelete, Integer integral, Integer isMember, Integer balance, String gender, Date birth, Date registerTime, Integer payPassword, String tel, Integer checkIn) {
        this.userId = userId;
        this.userName = userName;
        this.password = password;
        this.isDelete = isDelete;
        this.integral = integral;
        this.isMember = isMember;
        this.balance = balance;
        this.gender = gender;
        this.birth = birth;
        this.registerTime = registerTime;
        this.payPassword = payPassword;
        this.tel = tel;
        this.checkIn = checkIn;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }

    public Integer getIsMember() {
        return isMember;
    }

    public void setIsMember(Integer isMember) {
        this.isMember = isMember;
    }

    public Integer getBalance() {
        return balance;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public Integer getPayPassword() {
        return payPassword;
    }

    public void setPayPassword(Integer payPassword) {
        this.payPassword = payPassword;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Integer getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Integer checkIn) {
        this.checkIn = checkIn;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", isDelete=" + isDelete +
                ", integral=" + integral +
                ", isMember=" + isMember +
                ", balance=" + balance +
                ", gender='" + gender + '\'' +
                ", birth=" + birth +
                ", registerTime=" + registerTime +
                ", payPassword=" + payPassword +
                ", tel='" + tel + '\'' +
                ", checkIn=" + checkIn +
                '}';
    }
}
