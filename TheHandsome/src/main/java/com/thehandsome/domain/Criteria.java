package com.thehandsome.domain;

import lombok.Data;

/**
 * 
 * @author "Seungyeon"
 *
 */
@Data

public class Criteria {

	private int pageNum;
	private int amount;

	public Criteria() {
		this(1, 10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}
