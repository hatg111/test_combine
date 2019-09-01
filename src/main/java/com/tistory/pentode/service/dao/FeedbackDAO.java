package com.tistory.pentode.service.dao;

import java.util.List;

import com.tistory.pentode.vo.AttachreviewimgVO;
import com.tistory.pentode.vo.FeedbackVO;
import com.tistory.pentode.vo.StoreVO;

public interface FeedbackDAO {

	public void create(FeedbackVO fb) throws Exception;

	public FeedbackVO read(Integer fbbno) throws Exception;

	public List<FeedbackVO> listAll(Integer storeid) throws Exception;
	
	public List<FeedbackVO> listFeed(Integer storeid) throws Exception;
	
	public List<StoreVO> listStore(Integer storeid) throws Exception;

	public int fileInsert(FeedbackVO reviewid) throws Exception;
	/* 리뷰 수정 */
	public void reviewupdate(FeedbackVO vo) throws Exception;
	
	public FeedbackVO updateread(Integer reviewid) throws Exception;
	
	public void deletereview(Integer reviewid) throws Exception;
 
}