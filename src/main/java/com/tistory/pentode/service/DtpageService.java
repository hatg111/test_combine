package com.tistory.pentode.service;

import java.util.List;

import com.tistory.pentode.domain.SearchCriteria;
import com.tistory.pentode.domain.Criteria;
import com.tistory.pentode.vo.FeedbackVO;
import com.tistory.pentode.vo.MainVO;

public interface DtpageService {
	List<MainVO> selectDtpageList(Integer storeid) throws Exception;

	List<FeedbackVO> selectFeedbackList(Integer storeid) throws Exception;
	
	public List<FeedbackVO> listCriteria(Criteria cri) throws Exception;
	
	public int listCountCriteria(Criteria cri) throws Exception;
	
	public void reviewdelete(FeedbackVO vo) throws Exception;
}
