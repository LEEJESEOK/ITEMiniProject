package com.thehandsome.service;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.thehandsome.domain.Criteria;
import com.thehandsome.domain.ReviewVO;
/**
 * 
 * @author "Seungyeon"
 *
 */

public interface ReviewService {
	
	public List<ReviewVO> getList(@RequestParam("pageNum") int pageNum,@RequestParam("amount") //1:1 게시판 페이징 리스트 반환
									int amount, @RequestParam("pid") String pid); 
	List<ReviewVO> review_All_select(String pid);//특정 pid(품번)에 해당하는 1:1게시판 글 모두 반환
	
	public int review_total(String pid);//1:1게시판에서 특정 mid에 해당하는 총 행 갯수 반환
	public ReviewVO review_read(Long rno);//1:1게시판에서 특정 qid에 해당하는 한 행 반환
	
	public int review_insert(ReviewVO reviewVO);//1:1 게시판 글 등록
	
	public int review_delete(Long rno); //1:1 게시판 글 삭제
	
	public int review_update(ReviewVO reviewVO);//1:1 게시판 글 수정
	
	

	
	
}
