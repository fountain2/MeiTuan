package com.meituan.bean;

public class Collection {
    private Integer collectionId;

    private Integer customerId;

    private Integer shopId;

    public Integer getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(Integer collectionId) {
        this.collectionId = collectionId;
    }

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

	@Override
	public String toString() {
		return "Collection [collectionId=" + collectionId + ", customerId=" + customerId + ", shopId=" + shopId + "]";
	}
    
}