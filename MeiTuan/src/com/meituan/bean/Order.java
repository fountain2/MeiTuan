package com.meituan.bean;

import java.util.Date;

public class Order {
    private Integer orderId;

    private Date orderTime;

    private Double orderAmount;

    private Date updateTime;

    private String orderStatus;

    private Integer addressId;

    private Integer sellerId;

    private Integer customerId;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public Double getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(Double orderAmount) {
        this.orderAmount = orderAmount;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus == null ? null : orderStatus.trim();
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getSellerId() {
        return sellerId;
    }

    public void setSellerId(Integer sellerId) {
        this.sellerId = sellerId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderTime=" + orderTime + ", orderAmount=" + orderAmount
				+ ", updateTime=" + updateTime + ", orderStatus=" + orderStatus + ", addressId=" + addressId
				+ ", sellerId=" + sellerId + ", customerId=" + customerId + "]";
	}
    
}