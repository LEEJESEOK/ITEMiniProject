package com.thehandsome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.domain.QnaProductVO;
import com.thehandsome.domain.ReviewVO;
import com.thehandsome.mapper.QnaProductMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Log4j
@Service
@AllArgsConstructor

/**
 * 
 * @author "Seungyeon"
 *
 */
public class QnaProductServiceImpl implements QnaProductService{
	@Autowired
	private QnaProductMapper mapper;
	
	
	@Override
	public int qna_total(String pid) {
		return mapper.qna_total(pid);
	}
	@Override
	public List<QnaProductVO> getList(int pageNum,int amount, String pid){
		return mapper.getListQnAPaging(pageNum,amount,pid);
	}
	@Override
	public List<QnaProductVO> qna_all_select(String pid) { 
		
		return mapper.All_select(pid);
	}

	@Override
	public QnaProductVO qna_read(long qid) { 
		
		return mapper.read(qid);
	}

	@Override
	public int qna_insert(QnaProductVO qnaproductVO) { 
			 
		return mapper.insert(qnaproductVO); 
		
	}

	@Override
	public int qna_delete(long qid) {
			
			
			
		return mapper.delete(qid);
	}

	@Override
	public int qna_update(QnaProductVO qnaproductVO) {
			
		return mapper.update(qnaproductVO);
	}

}
