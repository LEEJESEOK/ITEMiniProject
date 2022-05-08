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
	public int qna_total(String pid) {
		return mapper.qna_total(pid);
	}
	@Override
	public ArrayList<ProductVO> display(int mode) {
		log.info("get list by mode....");
		return mapper.display(mode);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand(int bno) {
		log.info("get list by brand....");
		return mapper.display_by_brand(bno);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_sort(int mode, int bno) {
		log.info("get list by brand using mode....");
		return mapper.display_by_brand_sort(mode, bno);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_color(int bno, String ccolorname) {
		log.info("get list by brand and color....");
		return mapper.display_by_brand_color(bno, ccolorname);
	}

	@Override
	public ArrayList<ProductVO> display_by_brand_size(int bno, String psize) {
		log.info("get list by brand and size....");
		return mapper.display_by_brand_size(bno, psize);
	}

	@Override
	public ProductVO display_product_detail(String pid) {
		log.info("get product detail....");
		return mapper.display_product_detail(pid);
	}


	@Override
	public ArrayList<ProductVO> display_product_color(String pid) {
		log.info("get product color ....");
		return mapper.display_product_color(pid);
	}

	@Override
	public ArrayList<ProductVO> display_product_size(String pid) {
		log.info("get product size ....");
		return mapper.display_product_size(pid);
	}
	

}
