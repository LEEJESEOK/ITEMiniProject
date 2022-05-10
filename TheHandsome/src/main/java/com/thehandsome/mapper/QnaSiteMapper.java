package com.thehandsome.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.thehandsome.domain.QnaSiteVO;
import com.thehandsome.domain.ReviewVO;



/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaSiteMapper {
	
	public List<QnaSiteVO> getListSitePaging(@Param("pageNum") int pageNum, //1:1 게시판 페이징 리스트 반환
			  								  @Param("amount") int amount,
			  								  @Param("mid") String mid);
	public int qna_site_total(String mid);//pid(품번)에 해당하는 총 글 갯수 반환
	
	public List<QnaSiteVO> All_select(String mid);//mid(아이디)에 해당하는 모든 리스트 반환
	
	public QnaSiteVO read(long qid); // 특정 qid(글 번호)에 해당하는 한 행 읽기
	
	public int insert(QnaSiteVO qnasiteVO); //1:1 게시판 글 등록
	
	public int delete(long qid);//1:1 게시판 글 삭제
	
	public int update(QnaSiteVO qnasiteVO);//1:1 게시판 글 수정

}
