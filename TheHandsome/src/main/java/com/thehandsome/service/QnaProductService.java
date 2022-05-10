package com.thehandsome.service;

import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.QnaProductVO;
import com.thehandsome.domain.ReviewVO;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaProductService {
	public List<QnaProductVO> getList(@RequestParam("pageNum") int pageNum, //QnA게시판 페이징 리스트 반환
			@RequestParam("amount") int amount, @RequestParam("pid") String pid); 
	public List<QnaProductVO> qna_all_select(String pid); //QnA게시판 특정 pid에 해당하는 모든 행 반환
	public int qna_total(String pid); //특정 pid에 해당하는 총 행  갯수 반환
	public QnaProductVO qna_read(long qid); //특정 qid를 가지는 글 반환

	public int qna_insert(QnaProductVO qnaproductVO); //상품평 게시판 글 등록

	public int qna_delete(long qid); //상품평 게시판 글 삭제

	public int qna_update(QnaProductVO qnaproductVO); //상품평 게시판 글 수정
	

}
