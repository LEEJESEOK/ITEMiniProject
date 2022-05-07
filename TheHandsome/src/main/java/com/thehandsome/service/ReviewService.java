package com.thehandsome.service;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ReviewVO;
/**
 * 
 * @author "Seungyeon"
 *
 */

public interface ReviewService {
	
	public List<ReviewVO> getList(@RequestParam("pageNum") int pageNum,@RequestParam("amount") int amount, @RequestParam("pid") String pid); //페이징
	List<ReviewVO> review_All_select(String pid);
	
	public int review_total(String pid);
	public ReviewVO review_read(Long rno);
	
	public int review_insert(ReviewVO reviewVO);
	
	public int review_delete(Long rno);
	
	public int review_update(ReviewVO reviewVO);
	
	

	
	
}
