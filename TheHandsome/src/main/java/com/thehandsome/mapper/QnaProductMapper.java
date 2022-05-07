package com.thehandsome.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.QnaProductVO;
import com.thehandsome.domain.ReviewVO;

/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaProductMapper {
	public List<QnaProductVO> getListQnAPaging(@Param("pageNum") int pageNum,
			  								  @Param("amount") int amount,
			  								  @Param("pid") String pid);
	public int qna_total(String pid);

	public List<QnaProductVO> All_select(String pid);

	public QnaProductVO read(long qid);

	public int insert(QnaProductVO qnaproductVO);

	public int delete(long qid);

	public int update(QnaProductVO qnaproductVO);

	
}
