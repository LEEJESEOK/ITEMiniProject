package com.thehandsome.mapper;

import java.util.List;
import com.thehandsome.domain.*;
import org.apache.ibatis.annotations.Param;



/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaSiteMapper {
	
	public List<QnaSiteVO> getListReviewPaging(@Param("cri") Criteria cri,
												  @Param("mid") QnaSiteVO mid);
	
	public List<QnaSiteVO> getListReview();

	public QnaSiteVO read(Long qid);
	
	public int insert(QnaSiteVO qnasiteVO);
	
	public int delete(Long qid);
	
	public int update(QnaSiteVO qnasiteVO);

}
