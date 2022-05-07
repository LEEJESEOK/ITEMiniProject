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
	public List<ReviewVO> getListReviewPaging(@Param("pageNum") int pageNum,
											  @Param("amount") int amount,
											  @Param("pid") String pid);
	public int review_total(String pid);
	public ReviewVO read(Long rno);
	
	public int insert(ReviewVO reviewVO);
	
	public int delete(Long rno);
	
	public int update(ReviewVO reviewVO);
	
	public List<ReviewVO> All_select(String pid);
	public int update_rate( String pid);
	
	}


