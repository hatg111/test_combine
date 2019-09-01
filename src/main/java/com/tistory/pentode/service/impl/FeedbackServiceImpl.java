package com.tistory.pentode.service.impl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.tistory.pentode.service.FeedbackService;
import com.tistory.pentode.service.dao.FeedbackDAO;
import com.tistory.pentode.vo.AttachreviewimgVO;
import com.tistory.pentode.vo.FeedbackVO;
import com.tistory.pentode.vo.StoreVO;

@Service("FeedbackDAO")
public class FeedbackServiceImpl implements FeedbackService {

	@Inject
	private FeedbackDAO dao;

	@Override
	public FeedbackVO read(Integer fbbno) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(fbbno);
	}

	@Override
	public List<FeedbackVO> listAll(Integer storeid) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll(storeid);
	}

	@Override
	public void regist(FeedbackVO fb) throws Exception {
		// TODO Auto-generated method stub
		dao.create(fb);
	}

	@Override
	public List<FeedbackVO> listFeed(Integer storeid) throws Exception {
		// TODO Auto-generated method stub
		return dao.listFeed(storeid);
	}

	@Override
	public List<StoreVO> listStore(Integer storeid) throws Exception {
		// TODO Auto-generated method stub
		return dao.listStore(storeid);
	}

	@Override
	public int fileInsert(FeedbackVO reviewid) throws Exception {
		// TODO Auto-generated method stub
		return dao.fileInsert(reviewid);
	}
	@Override
	public void reviewupdate(FeedbackVO vo) throws Exception {
		dao.reviewupdate(vo);

	}

	@Override
	public FeedbackVO updateread(Integer reviewid) throws Exception {
		// TODO Auto-generated method stub
		return dao.updateread(reviewid);
	}

	@Override
	public void deletereview(Integer reviewid) throws Exception {
		// TODO Auto-generated method stub
		dao.deletereview(reviewid);
	}

}