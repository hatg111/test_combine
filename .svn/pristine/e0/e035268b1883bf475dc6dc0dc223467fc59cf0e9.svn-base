package com.tistory.pentode.service;

import java.util.List;

import com.tistory.pentode.domain.Criteria;
import com.tistory.pentode.domain.SearchCriteria;

import com.tistory.pentode.vo.ReviewVO;

public interface ReviewService {

	public void regist(ReviewVO review) throws Exception;
	
	public ReviewVO read(Integer bno) throws Exception;

	public void modify(ReviewVO board) throws Exception;

	public void remove(Integer bno) throws Exception;

	public List<ReviewVO> listAll() throws Exception;

	public List<ReviewVO> listCriteria(Criteria cri) throws Exception;

	public int listCountCriteria(Criteria cri) throws Exception;

	public List<ReviewVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	
}
