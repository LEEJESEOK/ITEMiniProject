package com.thehandsome.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ProductVO;
import com.thehandsome.domain.QnaSiteVO;
import com.thehandsome.domain.ReviewVO;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaSiteService {
	public List<QnaSiteVO> getList(@RequestParam("pageNum") int pageNum, //1:1 게시판 페이징 리스트 반환
			@RequestParam("amount") int amount, @RequestParam("pid") String mid); 
	public List<QnaSiteVO> site_all_select(String mid); //특정 mid(아이디)에 해당하는 1:1게시판 글 모두 반환
	public int qna_site_total(String mid); //1:1게시판에서 특정 mid에 해당하는 총 행 갯수 반환
	public QnaSiteVO site_read(Long qid); //1:1게시판에서 특정 qid에 해당하는 한 행 반환
	
	public int site_insert(QnaSiteVO qnasiteVO);//1:1 게시판 글 등록
	
	public int site_delete(Long qid); //1:1 게시판 글 삭제
	
	public int site_update(QnaSiteVO qnasiteVO); //1:1 게시판 글 수정



}
