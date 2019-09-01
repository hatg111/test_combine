package com.tistory.pentode.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.tistory.pentode.domain.SearchCriteria;
import com.tistory.pentode.service.MainService;
import com.tistory.pentode.service.dao.MainDAO;
import com.tistory.pentode.vo.MainVO;

@Service("mainService")
public class MainServiceImpl implements MainService {
	//주입
	@Autowired
	private MainDAO mainMapper;

	@Override
	@Transactional
	public List<MainVO> selectMainList() throws Exception {
		System.out.println("DAO의 selectMainList 메소드 실행");
		return mainMapper.selectMainList();
	}
	
	@Override
	public List<MainVO> DtListSearchCri(SearchCriteria Scri) throws Exception {
		System.out.println("DAO의 DtListSearchCri 메소드 실행");
		return mainMapper.DtListSearchCri(Scri.getKeyword());
	}

}
