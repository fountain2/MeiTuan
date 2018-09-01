package com.meituan.bean;

import java.util.Arrays;

public class Shop {
    private Integer shopId;

    private Integer sellerId;

    private String shopName;

    private String shopType;

    private String shopStatus;

    private String businessHoursStart;

    private String businessHoursEnd;

    private String shopAddress;

    private String shopPhone;

    private Double startPrice;

    private Double sendPrice;

    private Integer monthSale;

    private Integer shopAutoSwitch;

    private byte[] shopPic;

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public Integer getSellerId() {
        return sellerId;
    }

    public void setSellerId(Integer sellerId) {
        this.sellerId = sellerId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName == null ? null : shopName.trim();
    }

    public String getShopType() {
        return shopType;
    }

    public void setShopType(String shopType) {
        this.shopType = shopType == null ? null : shopType.trim();
    }

    public String getShopStatus() {
        return shopStatus;
    }

    public void setShopStatus(String shopStatus) {
        this.shopStatus = shopStatus == null ? null : shopStatus.trim();
    }

    public String getBusinessHoursStart() {
        return businessHoursStart;
    }

    public void setBusinessHoursStart(String businessHoursStart) {
        this.businessHoursStart = businessHoursStart == null ? null : businessHoursStart.trim();
    }

    public String getBusinessHoursEnd() {
        return businessHoursEnd;
    }

    public void setBusinessHoursEnd(String businessHoursEnd) {
        this.businessHoursEnd = businessHoursEnd == null ? null : businessHoursEnd.trim();
    }

    public String getShopAddress() {
        return shopAddress;
    }

    public void setShopAddress(String shopAddress) {
        this.shopAddress = shopAddress == null ? null : shopAddress.trim();
    }

    public String getShopPhone() {
        return shopPhone;
    }

    public void setShopPhone(String shopPhone) {
        this.shopPhone = shopPhone == null ? null : shopPhone.trim();
    }

    public Double getStartPrice() {
        return startPrice;
    }

    public void setStartPrice(Double startPrice) {
        this.startPrice = startPrice;
    }

    public Double getSendPrice() {
        return sendPrice;
    }

    public void setSendPrice(Double sendPrice) {
        this.sendPrice = sendPrice;
    }

    public Integer getMonthSale() {
        return monthSale;
    }

    public void setMonthSale(Integer monthSale) {
        this.monthSale = monthSale;
    }

    public Integer getShopAutoSwitch() {
        return shopAutoSwitch;
    }

    public void setShopAutoSwitch(Integer shopAutoSwitch) {
        this.shopAutoSwitch = shopAutoSwitch;
    }

    public byte[] getShopPic() {
        return shopPic;
    }

    public void setShopPic(byte[] shopPic) {
        this.shopPic = shopPic;
    }

	@Override
	public String toString() {
		return "Shop [shopId=" + shopId + ", sellerId=" + sellerId + ", shopName=" + shopName + ", shopType=" + shopType
				+ ", shopStatus=" + shopStatus + ", businessHoursStart=" + businessHoursStart + ", businessHoursEnd="
				+ businessHoursEnd + ", shopAddress=" + shopAddress + ", shopPhone=" + shopPhone + ", startPrice="
				+ startPrice + ", sendPrice=" + sendPrice + ", monthSale=" + monthSale + ", shopAutoSwitch="
				+ shopAutoSwitch + ", shopPic=" + Arrays.toString(shopPic) + "]";
	}
    
    
}