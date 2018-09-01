package com.meituan.bean;

import java.util.Arrays;

public class Goods {
    private Integer goodsId;

    private Integer goodsTypeId;

    private String goodsName;

    private Double goodsPrice;

    private Integer goodsMonthSale;

    private Integer goodsLastmonthSale;

    private byte[] goodsPic;

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getGoodsTypeId() {
        return goodsTypeId;
    }

    public void setGoodsTypeId(Integer goodsTypeId) {
        this.goodsTypeId = goodsTypeId;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName == null ? null : goodsName.trim();
    }

    public Double getGoodsPrice() {
        return goodsPrice;
    }

    public void setGoodsPrice(Double goodsPrice) {
        this.goodsPrice = goodsPrice;
    }

    public Integer getGoodsMonthSale() {
        return goodsMonthSale;
    }

    public void setGoodsMonthSale(Integer goodsMonthSale) {
        this.goodsMonthSale = goodsMonthSale;
    }

    public Integer getGoodsLastmonthSale() {
        return goodsLastmonthSale;
    }

    public void setGoodsLastmonthSale(Integer goodsLastmonthSale) {
        this.goodsLastmonthSale = goodsLastmonthSale;
    }

    public byte[] getGoodsPic() {
        return goodsPic;
    }

    public void setGoodsPic(byte[] goodsPic) {
        this.goodsPic = goodsPic;
    }

	@Override
	public String toString() {
		return "Goods [goodsId=" + goodsId + ", goodsTypeId=" + goodsTypeId + ", goodsName=" + goodsName
				+ ", goodsPrice=" + goodsPrice + ", goodsMonthSale=" + goodsMonthSale + ", goodsLastmonthSale="
				+ goodsLastmonthSale + ", goodsPic=" + Arrays.toString(goodsPic) + "]";
	}
    
}