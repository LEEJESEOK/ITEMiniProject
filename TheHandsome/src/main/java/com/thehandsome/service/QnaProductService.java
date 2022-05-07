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
	public List<QnaProductVO> getList(@RequestParam("pageNum") int pageNum,@RequestParam("amount") int amount, @RequestParam("pid") String pid);
	public List<QnaProductVO> qna_all_select(String pid);
	public int qna_total(String pid);
	public QnaProductVO qna_read(long qid);

	public int qna_insert(QnaProductVO qnaproductVO);

	public int qna_delete(long qid);

	public int qna_update(QnaProductVO qnaproductVO);	
	

}
