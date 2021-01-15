package com.zephyr.vo;

import lombok.Data;

@Data
public class Criteria {

	private int page;
	private int amount;
	
	private String keyword;
	private String type;
	
	public Criteria() {
		this(1, 10);
	}
	
	public Criteria(int page, int amount) {
		this.page = page;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split("");
	}
	
	
}
