package com.thehandsome.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PageDTD {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int pageNum;
	private int amount;
	private int total;
	
	
	public PageDTD(int pageNum,int amount, int total) {
		
		this.total=total;
		this.pageNum=pageNum;
		this.amount=amount;
		this.endPage=(int)(Math.ceil(pageNum/10.0))*10;
		this.startPage=this.endPage-9;
		int realEnd = (int) Math.ceil((total*1.0)/amount);
		if (realEnd < this.endPage) {
			this.endPage=realEnd;
		}
		
		this.prev=(this.startPage>1);
		this.next=(this.endPage <realEnd);
	}
}

