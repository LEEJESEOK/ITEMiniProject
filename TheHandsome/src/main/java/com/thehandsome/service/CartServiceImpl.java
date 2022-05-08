package com.thehandsome.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.domain.MyCartVO;
import com.thehandsome.mapper.CartMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
/**
 * @author 고동현
 * 장바구니 관련 service 구현
 *
 */
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper mapper;
	
	@Override
	public ArrayList<MyCartVO> list(String mid) { // 장바구니 불러오기
		log.info("get list ....");
		return mapper.list(mid);
	}

	@Override
	public void insert_cart(MyCartVO mycartVO) { // 장바구니 삽입
		log.info("insert cart ....");
		mapper.insert_cart(mycartVO);
	}

	@Override
	public void delete_cart(String pid) { // 장바구니 삭제
		log.info("delete cart ....");
		mapper.delete_cart(pid);
	}

	@Override
	public void update_cart(String pid, int pamount) { // 장바구니 수량 업데이트
		log.info("update quantity ....");
		mapper.update_cart(pid, pamount);
	}

}
