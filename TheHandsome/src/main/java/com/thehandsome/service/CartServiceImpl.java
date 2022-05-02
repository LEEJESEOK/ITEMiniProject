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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert_cart(MyCartVO mycartVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete_cart(String pid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update_cart(String pid, int pamount) {
		// TODO Auto-generated method stub
		
	}

}
