package com.thehandsome.mapper;

import com.thehandsome.domain.*;
import java.util.List;
import org.apache.ibatis.annotations.Param;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaProductMapper {
	public List<QnaProductVO> getListReview();

	public List<QnaProductVO> getListReviewPaging(@Param("cri") Criteria cri,
											      @Param("pid") QnaProductVO pid);

	public QnaProductVO read(Long pid);
	
	public int insert(QnaProductVO qnaproductVO);
	
	public int delete(Long qid);
	
	public int update(QnaProductVO qnaproductVO);
}
