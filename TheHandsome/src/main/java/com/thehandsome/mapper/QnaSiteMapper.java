package com.thehandsome.mapper;

import java.util.List;

import com.thehandsome.domain.QnaSiteVO;



/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaSiteMapper {
	
//	public List<QnaSiteVO> getListReviewPaging(@Param("cri") Criteria cri,
//												  @Param("mid") QnaSiteVO mid);
	
//	public List<QnaSiteVO> getListReview();
	
	public List All_select(String mid);
	
	public QnaSiteVO read(long qid);
	
	public int insert(QnaSiteVO qnasiteVO);
	
	public int delete(long qid);
	
	public int update(QnaSiteVO qnasiteVO);

}
