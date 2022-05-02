package com.thehandsome.domain;
/**
 * 
 * @author "Seungyeon"
 *
 */
public class Criteria {
	private int pageNum;	
	private int amount;
	
	public Criteria() {
		this(1,10);
	}

	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}



}
