package com.meituan.bean;

public class Seller {
    private Integer sellerId;

    private String sellerName;

    private String sellerPsw;

    private String sellerPhone;

    public Integer getSellerId() {
        return sellerId;
    }

    public void setSellerId(Integer sellerId) {
        this.sellerId = sellerId;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName == null ? null : sellerName.trim();
    }

    public String getSellerPsw() {
        return sellerPsw;
    }

    public void setSellerPsw(String sellerPsw) {
        this.sellerPsw = sellerPsw == null ? null : sellerPsw.trim();
    }

    public String getSellerPhone() {
        return sellerPhone;
    }

    public void setSellerPhone(String sellerPhone) {
        this.sellerPhone = sellerPhone == null ? null : sellerPhone.trim();
    }

	@Override
	public String toString() {
		return "Seller [sellerId=" + sellerId + ", sellerName=" + sellerName + ", sellerPsw=" + sellerPsw
				+ ", sellerPhone=" + sellerPhone + "]";
	}
    
}