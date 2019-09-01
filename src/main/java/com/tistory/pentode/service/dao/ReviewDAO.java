package com.tistory.pentode.service.dao;

import java.util.List;

import com.tistory.pentode.domain.Criteria;
import com.tistory.pentode.domain.SearchCriteria;

import com.tistory.pentode.vo.ReviewVO;

public interface ReviewDAO {

	public void create(ReviewVO re) throws Exception;

	public ReviewVO read(Integer bno) throws Exception;

	public void update(ReviewVO re) throws Exception;

	public void delete(Integer reviewid) throws Exception;

	public List<ReviewVO> listAll() throws Exception;

	public List<ReviewVO> listPage(int page) throws Exception;

	public List<ReviewVO> listCriteria(Criteria cri) throws Exception;

	public int countPaging(Criteria cri) throws Exception;

	// use for dynamic sql
	public List<ReviewVO> listSearch(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	
}