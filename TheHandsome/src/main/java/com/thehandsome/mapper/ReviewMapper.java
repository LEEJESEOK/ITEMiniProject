package com.thehandsome.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.thehandsome.domain.*;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface ReviewMapper {
	public List<ReviewVO> getListReviewPaging(@Param("cri") Criteria cri,
										@Param("pid") ProductVO pid);
	
	public List<ReviewVO> getListReview();
	
	public ReviewVO read(Long rno);
	
	public int insert(ReviewVO reviewVO);
	
	public int delete(Long rno);
	
	public int update(ReviewVO reviewvo);
	
	}


