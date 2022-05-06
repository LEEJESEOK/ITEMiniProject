package com.thehandsome.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ProductVO;
import com.thehandsome.domain.QnaSiteVO;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaSiteService {
	/*
	 * public List<QnaSiteVO> getListReviewPaging(@Param("cri") Criteria cri,
	 * 
	 * @Param("pid") ProductVO pid);
	 */
	
/* public List<ReviewVO> getListReview(); */
	public List<QnaSiteVO> site_all_select(String mid);
	
	public QnaSiteVO site_read(Long qid);
	
	public int site_insert(QnaSiteVO qnasiteVO);
	
	public int site_delete(Long qid);
	
	public int site_update(QnaSiteVO qnasiteVO);



}
