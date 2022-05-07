package com.thehandsome.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ProductVO;
import com.thehandsome.domain.QnaSiteVO;
import com.thehandsome.domain.ReviewVO;
import com.thehandsome.mapper.QnaSiteMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
/**
 * 
 * @author "Seungyeon"
 *
 */
@Log4j
@Service
@AllArgsConstructor
public class QnaSiteServiceImpl implements QnaSiteService{
	@Autowired
	private QnaSiteMapper mapper;
	
	@Override
	public int qna_site_total(String mid) {
		return mapper.qna_site_total(mid);
	}
	@Override
	public List<QnaSiteVO> getList(int pageNum,int amount, String mid){
		return mapper.getListSitePaging(pageNum,amount,mid);
	}

	@Override
	public List<QnaSiteVO> site_all_select(String mid){
		return mapper.All_select(mid);
	}
	@Override
	public QnaSiteVO site_read(Long qid) {
		return mapper.read(qid);
	}
	@Override
	public int site_insert(QnaSiteVO qnasiteVO) {
		return mapper.insert(qnasiteVO);
	}
	@Override
	public int site_delete(Long qid) {
		return mapper.delete(qid);
	}
	@Override
	public int site_update(QnaSiteVO qnasiteVO) {
		return mapper.update(qnasiteVO);
	}
	

}
