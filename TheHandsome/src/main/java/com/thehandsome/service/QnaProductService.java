package com.thehandsome.service;

import java.util.List;

import com.thehandsome.domain.QnaProductVO;
/**
 * 
 * @author "Seungyeon"
 *
 */
public interface QnaProductService {
	public List<QnaProductVO> qna_all_select(String pid);

	public QnaProductVO qna_read(long qid);

	public int qna_insert(QnaProductVO qnaproductVO);

	public int qna_delete(long qid);

	public int qna_update(QnaProductVO qnaproductVO);	
	

}
