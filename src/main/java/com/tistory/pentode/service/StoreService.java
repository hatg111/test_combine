package com.tistory.pentode.service;

import java.util.List;

import com.tistory.pentode.vo.StoreVO;

public interface StoreService {
	/*List<StoreVO> selectStoreList() throws Exception;*/
	/*List<StoreVO> selectStoreList(String sorted) throws Exception;*/
	/*List<StoreVO> selectStoreL() throws Exception;*/
	List<StoreVO> selectStoreL(String sorted) throws Exception;
	List<StoreVO> selectStoreListA(String sorted) throws Exception;
	List<StoreVO> selectStoreListB(String sorted) throws Exception;
	List<StoreVO> selectStoreListC(String sorted) throws Exception;
	List<StoreVO> selectStoreListD(String sorted) throws Exception;
	List<StoreVO> selectStoreListE(String sorted) throws Exception;
	
	StoreVO starAvarage(Integer storeid) throws Exception;
	void updateStarAvarage(float tasteStar, float costefStar, float serviceStar, Integer storeid, float star) throws Exception;
	List<StoreVO> selectStoreIdList() throws Exception;
	
}
