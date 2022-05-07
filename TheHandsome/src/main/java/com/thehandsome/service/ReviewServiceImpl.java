package com.thehandsome.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ReviewVO;
import com.thehandsome.mapper.ReviewMapper;

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
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewMapper mapper;
	
	@Override
	public int review_total(String pid) {
		return mapper.review_total(pid);
	}
	@Override
	public List<ReviewVO> getList(int pageNum,int amount, String pid){
		return mapper.getListReviewPaging(pageNum,amount,pid);
	}

	@Override
	public List<ReviewVO> review_All_select(String pid) {
		
		return mapper.All_select(pid);
	}

	@Override
	public ReviewVO review_read(Long rno) {
		
		return mapper.read(rno);
	}

	@Override
	public int review_insert(ReviewVO reviewVO) {
			mapper.insert(reviewVO);
		return mapper.update_rate(reviewVO.getPid());
	}

	@Override
	public int review_delete(Long rno) {
			String pid=mapper.read(rno).getPid();
			mapper.delete(rno);
		
		return mapper.update_rate(pid);
		
	}

	@Override
	public int review_update(ReviewVO reviewVO) {
		
		mapper.update(reviewVO);
		return mapper.update_rate(reviewVO.getPid());
	}

	

	
	
}
