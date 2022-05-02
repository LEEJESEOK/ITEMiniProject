package com.thehandsome.mapper;

import java.util.ArrayList;

import com.thehandsome.domain.MyCartVO;

public interface CartMapper {
	
	public ArrayList<MyCartVO> list(String mid); // 장바구니 불러오기
	
	public void insert_cart(MyCartVO mycartVO); // 장바구니 담기
	
	public void delete_cart(String pid); // 선택된 상품 장바구니에서 삭제
	
	public void update_cart(String pid, int pamount); // 선택된 제품 수량 변경

}
