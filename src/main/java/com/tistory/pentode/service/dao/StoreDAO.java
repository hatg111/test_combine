package com.tistory.pentode.service.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.tistory.pentode.vo.StoreVO;

public interface StoreDAO {
	/*List<StoreVO> selectStoreList() throws Exception;*/
	List<StoreVO> selectStoreList(Map<String, String> paramMap) throws Exception;
	/*List<StoreVO> selectStoreL() throws Exception;*/
	List<StoreVO> selectStoreL(Map<String, String> paramMap) throws Exception;
	List<StoreVO> selectStoreListA(Map<String, String> paramMap) throws Exception;
	List<StoreVO> selectStoreListB(Map<String, String> paramMap) throws Exception;
	List<StoreVO> selectStoreListC(Map<String, String> paramMap) throws Exception;
	List<StoreVO> selectStoreListD(Map<String, String> paramMap) throws Exception;
	List<StoreVO> selectStoreListE(Map<String, String> paramMap) throws Exception;
	
	StoreVO starAvarage(Integer storeid) throws Exception;
	void updateStarAvarage(@Param("tasteStar") float tasteStar, @Param("costefStar") float costefStar, 
							@Param("serviceStar") float serviceStar, @Param("storeid") Integer storeid, @Param("star") float star) throws Exception;
	List<StoreVO> selectStoreIdList() throws Exception;
}

