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
	
	public List<QnaSiteVO> getListSitePaging(@Param("pageNum") int pageNum,
			  								  @Param("amount") int amount,
			  								  @Param("mid") String mid);
	public int qna_site_total(String mid);
	
	public List<QnaSiteVO> All_select(String mid);
	
	public QnaSiteVO read(long qid);
	
	public int insert(QnaSiteVO qnasiteVO);
	
	public int delete(long qid);
	
	public int update(QnaSiteVO qnasiteVO);

}
