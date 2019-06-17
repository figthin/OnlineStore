package com.oaec.OnlineStore.entity;

import java.util.Date;

public class Product {
    private Integer productId;
    private String name;
    private Double price;
    private Integer stock;
    private Integer sale;
    private Integer classId;
    private String url;
    private Integer isDelete;
    private Date addTime;
    private String color;
    private String productSize;
    private Integer points;
    private Integer weight;
    private Integer freight;

    public Product() {
    }

    public Product(Integer productId, String name, Double price, Integer stock, Integer sale, Integer classId, String url, Integer isDelete, Date addTime, String color, String productSize, Integer points, Integer weight, Integer freight) {
        this.productId = productId;
        this.name = name;
        this.price = price;
        this.stock = stock;
        this.sale = sale;
        this.classId = classId;
        this.url = url;
        this.isDelete = isDelete;
        this.addTime = addTime;
        this.color = color;
        this.productSize = productSize;
        this.points = points;
        this.weight = weight;
        this.freight = freight;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getSale() {
        return sale;
    }

    public void setSale(Integer sale) {
        this.sale = sale;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
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

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getProductSize() {
        return productSize;
    }

    public void setProductSize(String productSize) {
        this.productSize = productSize;
    }

    public Integer getPoints() {
        return points;
    }

    public void setPoints(Integer points) {
        this.points = points;
    }

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public Integer getFreight() {
        return freight;
    }

    public void setFreight(Integer freight) {
        this.freight = freight;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", sale=" + sale +
                ", classId=" + classId +
                ", url='" + url + '\'' +
                ", isDelete=" + isDelete +
                ", addTime=" + addTime +
                ", color='" + color + '\'' +
                ", productSize='" + productSize + '\'' +
                ", points=" + points +
                ", weight=" + weight +
                ", freight=" + freight +
                '}';
    }
}
