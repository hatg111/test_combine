package com.tistory.pentode.service.dao;

import java.util.List;

import com.tistory.pentode.vo.UserrankingVO;

public interface UserrankingDAO {
	List<UserrankingVO> selectUserrankingList() throws Exception;
	
}
