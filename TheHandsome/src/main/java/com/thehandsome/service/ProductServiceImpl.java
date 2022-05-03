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
	public ArrayList<ProductVO> display(int mode) {
		log.info("get list by mode....");
		return mapper.display(mode);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand(String bname) {
		log.info("get list by brand....");
		return mapper.display_by_brand(bname);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_sort(int mode, String bname) {
		log.info("get list by brand using mode....");
		return mapper.display_by_brand_sort(mode, bname);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_color(String bname, String ccolorname) {
		log.info("get list by brand and color....");
		return mapper.display_by_brand_color(bname, ccolorname);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_size(String bname, String psize) {
		log.info("get list by brand and size....");
		return mapper.display_by_brand_size(bname, psize);
	}

	@Override
	public ProductVO display_product_detail(String pid) {
		log.info("get product detail....");
		return mapper.display_product_detail(pid);
	}
	

}
