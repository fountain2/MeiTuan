package com.meituan.bean;

import java.util.Date;

public class ShopSale {
    private Integer saleId;

    private Integer shopId;

    private Date statisticTime;

    private Integer shopMonthSale;

    private String hotSaleName;

    private Integer hotSaleMonth;

    public Integer getSaleId() {
        return saleId;
    }

    public void setSaleId(Integer saleId) {
        this.saleId = saleId;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Date getStatisticTime() {
        return statisticTime;
    }

    public void setStatisticTime(Date statisticTime) {
        this.statisticTime = statisticTime;
    }

    public Integer getShopMonthSale() {
        return shopMonthSale;
    }

    public void setShopMonthSale(Integer shopMonthSale) {
        this.shopMonthSale = shopMonthSale;
    }

    public String getHotSaleName() {
        return hotSaleName;
    }

    public void setHotSaleName(String hotSaleName) {
        this.hotSaleName = hotSaleName == null ? null : hotSaleName.trim();
    }

    public Integer getHotSaleMonth() {
        return hotSaleMonth;
    }

    public void setHotSaleMonth(Integer hotSaleMonth) {
        this.hotSaleMonth = hotSaleMonth;
    }

	@Override
	public String toString() {
		return "ShopSale [saleId=" + saleId + ", shopId=" + shopId + ", statisticTime=" + statisticTime
				+ ", shopMonthSale=" + shopMonthSale + ", hotSaleName=" + hotSaleName + ", hotSaleMonth=" + hotSaleMonth
				+ "]";
	}
    
    
}