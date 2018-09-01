package com.meituan.bean;

public class Customer {
    private Integer customerId;

    private String customerName;

    private String customerPsw;

    private String customerPhone;

    public Integer getCustomerId() {
        return customerId;
    }

    public void setCustomerId(Integer customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName == null ? null : customerName.trim();
    }

    public String getCustomerPsw() {
        return customerPsw;
    }

    public void setCustomerPsw(String customerPsw) {
        this.customerPsw = customerPsw == null ? null : customerPsw.trim();
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone == null ? null : customerPhone.trim();
    }

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", customerName=" + customerName + ", customerPsw=" + customerPsw
				+ ", customerPhone=" + customerPhone + "]";
	}
    
    
}