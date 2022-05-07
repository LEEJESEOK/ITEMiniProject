package com.thehandsome.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ProductVO;
import com.thehandsome.domain.QnaSiteVO;
import com.thehandsome.domain.ReviewVO;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaSiteService {
	public List<QnaSiteVO> getList(@RequestParam("pageNum") int pageNum,@RequestParam("amount") int amount, @RequestParam("pid") String mid); //페이징
	public List<QnaSiteVO> site_all_select(String mid);
	public int qna_site_total(String mid);
	public QnaSiteVO site_read(Long qid);
	
	public int site_insert(QnaSiteVO qnasiteVO);
	
	public int site_delete(Long qid);
	
	public int site_update(QnaSiteVO qnasiteVO);



}
