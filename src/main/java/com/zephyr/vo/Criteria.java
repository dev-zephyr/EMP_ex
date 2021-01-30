package com.zephyr.vo;

import lombok.Data;

@Data
public class Criteria {

	private int page;
	private int amount;
	
	private String keyword;
	private String type;
	
	// 시작 페이지는 1, 한 페이지당 게시물은 10으로 기본값 세팅
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
