package com.thehandsome.service;
import java.util.List;

import com.thehandsome.domain.ReviewVO;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface ReviewService {
	/*
	 * public List<ReviewVO> getListReviewPaging(@Param("cri") Criteria cri,
	 * 
	 * @Param("pid") ProductVO pid);
	 */

	List<ReviewVO> review_All_select(String pid);
	
	public ReviewVO review_read(Long rno);
	
	public int review_insert(ReviewVO reviewVO);
	
	public int review_delete(Long rno);
	
	public int review_update(ReviewVO reviewVO);
	
	

	
	
}
