package com.franky.movie.bean;
/**
 * 支付方式类型枚举
 * @author frank
 *
 */
public enum PaymentType {

	alipay("支付宝",1),
	weixin("微信支付",0)
	;
	
	private String name;
	
	private int status;
	
	private PaymentType(String name,int status){
		this.name = name;
		this.status = status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
