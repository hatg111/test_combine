package com.tistory.pentode.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tistory.pentode.domain.Criteria;
import com.tistory.pentode.service.DtpageService;
import com.tistory.pentode.domain.SearchCriteria;
import com.tistory.pentode.service.dao.DtpageDAO;
import com.tistory.pentode.vo.FeedbackVO;
import com.tistory.pentode.vo.MainVO;

@Service("dtpageService")
public class DtpageServiceImpl implements DtpageService {
	@Autowired
	private DtpageDAO dtpageMapper;

	@Override
	@Transactional
	public List<MainVO> selectDtpageList(Integer storeid) throws Exception {
		System.out.println("DAO의 selectDtpageList 메소드 실행");
		return dtpageMapper.selectDtpageList(storeid);
	}
	
	@Override
	public List<FeedbackVO> selectFeedbackList(Integer storeid) throws Exception {
		// TODO Auto-generated method stub
		return dtpageMapper.selectFeedbackList(storeid);
	}

	@Override
	public void reviewdelete(FeedbackVO vo) throws Exception {
		dtpageMapper.reviewdelete(vo);

	}

	@Override
	public List<FeedbackVO> listCriteria(Criteria cri) throws Exception {
		
		// TODO Auto-generated method stub
		return dtpageMapper.listCriteria(cri);
	}

	 @Override
	  public int listCountCriteria(Criteria cri) throws Exception {

	    return dtpageMapper.countPaging(cri);
	  }

	

}
