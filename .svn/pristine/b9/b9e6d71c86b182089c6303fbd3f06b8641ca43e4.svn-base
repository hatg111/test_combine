package com.tistory.pentode.service.impl;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.tistory.pentode.domain.Criteria;
import com.tistory.pentode.domain.SearchCriteria;
import com.tistory.pentode.service.ReviewService;
import com.tistory.pentode.service.dao.ReviewDAO;
import com.tistory.pentode.vo.ReviewVO;

@Service("ReviewDAO")
public class ReviewServiceImpl implements ReviewService {

	@Inject
	private ReviewDAO dao;

	// 회원가입
	@Override
	public void regist(ReviewVO review) throws Exception {
		dao.create(review);

	}

	@Override
	public ReviewVO read(Integer reviewid) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(reviewid);
	}

	@Override
	public void modify(ReviewVO review) throws Exception {
		// TODO Auto-generated method stub
		dao.update(review);
	}

	@Override
	public void remove(Integer reviewid) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(reviewid);
	}

	@Override
	public List<ReviewVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<ReviewVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging(cri);
	}

	@Override
	public List<ReviewVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearchCount(cri);
	}
	
}