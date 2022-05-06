package com.thehandsome.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.QnaProductVO;

/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaProductMapper {
	public List<QnaProductVO> getListReviewPaging(@Param("cri") Criteria cri, @Param("pid") QnaProductVO pid);

	/* public List<QnaProductVO> getListQna(); */

	public List<QnaProductVO> All_select(String pid);

	public QnaProductVO read(long qid);

	public int insert(QnaProductVO qnaproductVO);

	public int delete(long qid);

	public int update(QnaProductVO qnaproductVO);

	
}
