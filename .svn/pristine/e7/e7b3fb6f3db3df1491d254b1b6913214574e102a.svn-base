package com.tistory.pentode.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.tistory.pentode.service.UserrankingService;
import com.tistory.pentode.service.dao.UserrankingDAO;
import com.tistory.pentode.vo.UserrankingVO;

@Service("userrankingService")
public class UserrankingServiceImpl implements UserrankingService {
	@Autowired
	private UserrankingDAO boardMapper;

	@Override
	@Transactional
	public List<UserrankingVO> selectUserrankingList() throws Exception {
		System.out.println("DAO의 selectUserrankingList 메소드 실행");
		return boardMapper.selectUserrankingList();
		
		//원래는 DAO를 구현한 클래스(Impl)에 정의된 메소드를 통해서 가는건데
		//여기서는 DAO구현 클래스 없이 알아서 메소드 이름과 같은 매퍼파일을 찾아서 간다. (Tb_Board_SQL.xml)
	}

}
