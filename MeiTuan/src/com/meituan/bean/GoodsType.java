package com.meituan.bean;

public class GoodsType {
    private Integer goodsTypeId;

    private Integer shopId;

    private String goodsTypeName;

    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public String getGoodsTypeName() {
        return goodsTypeName;
    }

    public void setGoodsTypeName(String goodsTypeName) {
        this.goodsTypeName = goodsTypeName == null ? null : goodsTypeName.trim();
    }

	@Override
	public String toString() {
		return "GoodsType [goodsTypeId=" + goodsTypeId + ", shopId=" + shopId + ", goodsTypeName=" + goodsTypeName
				+ "]";
	}
    
    
}