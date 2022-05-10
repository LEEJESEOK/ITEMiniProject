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
//QnA Mapper 인터페이스
public interface QnaProductMapper {
	public List<QnaProductVO> getListQnAPaging(@Param("pageNum") int pageNum,  //QnA페이징 리스트 반환
			  								  @Param("amount") int amount,
			  								  @Param("pid") String pid);
	public int qna_total(String pid); //pid(품번)에 해당하는 총 글 갯수 반환

	public List<QnaProductVO> All_select(String pid); //pid(품번)에 해당하는 모든 리스트 반환

	public QnaProductVO read(long qid); // 특정 qid(글 번호)에 해당하는 한 행 읽기

	public int insert(QnaProductVO qnaproductVO); //QnA게시판 글 등록

	public int delete(long qid); //QnA게시판 글 삭제

	public int update(QnaProductVO qnaproductVO); //QnA게시판 글 수정

	
}
