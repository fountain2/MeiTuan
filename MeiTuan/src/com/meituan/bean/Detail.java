package com.meituan.bean;

public class Detail {
    private Integer detailId;

    private Integer orderId;

    private String goodsName;

    private Integer buyNumber;

    private Double goodsSum;

    public Integer getDetailId() {
        return detailId;
    }

    public void setDetailId(Integer detailId) {
        this.detailId = detailId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public Integer getBuyNumber() {
        return buyNumber;
    }

    public void setBuyNumber(Integer buyNumber) {
        this.buyNumber = buyNumber;
    }

    public Double getGoodsSum() {
        return goodsSum;
    }

    public void setGoodsSum(Double goodsSum) {
        this.goodsSum = goodsSum;
    }

	@Override
	public String toString() {
		return "Detail [detailId=" + detailId + ", orderId=" + orderId + ", goodsName=" + goodsName + ", buyNumber="
				+ buyNumber + ", goodsSum=" + goodsSum + "]";
	}
    
}