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
		log.info("get list by mode....");
		return mapper.read(mode);
	}

	@Override
	public ArrayList<ProductVO> read_by_brand(int bno) {
		log.info("read by brand ....");
		return mapper.read_by_brand(bno);
	}

	@Override
	public ArrayList<ProductVO> read_by_color(String ccolorname) {
		log.info("read by color ....");
		return mapper.read_by_color(ccolorname);
	}

	@Override
	public ArrayList<ProductVO> read_by_size(String size) {
		log.info("read by size ....");
		return mapper.read_by_size(size);
	}

	@Override
	public ProductVO read_product_detail(String pid) {
		log.info("read product detail ....");
		return mapper.read_product_detail(pid);
	}
	

}
