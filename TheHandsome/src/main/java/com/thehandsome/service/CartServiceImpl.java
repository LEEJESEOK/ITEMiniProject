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
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper mapper;
	
	@Override
	public ArrayList<MyCartVO> list(String mid) {
		log.info("get list ....");
		return mapper.list(mid);
	}

	@Override
	public void insert_cart(MyCartVO mycartVO) {
		log.info("insert cart ....");
		mapper.insert_cart(mycartVO);
	}

	@Override
	public void delete_cart(String pid) {
		log.info("delete cart ....");
		mapper.delete_cart(pid);
	}

	@Override
	public void update_cart(String pid, int pamount) {
		log.info("update quantity ....");
		mapper.update_cart(pid, pamount);
	}

}
