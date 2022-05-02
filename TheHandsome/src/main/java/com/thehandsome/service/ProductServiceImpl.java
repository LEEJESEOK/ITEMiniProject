package com.thehandsome.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.domain.ProductVO;
import com.thehandsome.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductMapper mapper;

	@Override
	public ArrayList<ProductVO> read(int mode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductVO> read_by_brand(int bno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductVO> read_by_color(String ccolorname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<ProductVO> read_by_size(String size) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductVO read_product_detail(String pid) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
