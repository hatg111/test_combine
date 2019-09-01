package com.tistory.pentode.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.tistory.pentode.service.StoreService;
import com.tistory.pentode.service.dao.StoreDAO;
import com.tistory.pentode.vo.StoreVO;

@Service("storeService")
public class StoreServiceImpl implements StoreService {
	@Autowired
	private StoreDAO boardMapper;
	
	
	/*@Override
	@Transactional
	public List<StoreVO> selectStoreList(String sorted) throws Exception {
		System.out.println("DAO의 selectStoreList 메소드 실행: "+sorted);
		
		Map<String, String> paramMap = new HashMap<String, String>();
		
	    paramMap.put("sorted", sorted);
		
		return boardMapper.selectStoreList(paramMap);
	}*/

	// 원래는 DAO를 구현한 클래스(Impl)에 정의된 메소드를 통해서 가는건데
	// 여기서는 DAO구현 클래스 없이 알아서 메소드 이름과 같은 매퍼파일을 찾아서 간다. (Tb_Board_SQL.xml)
	/*@Transactional
	public List<StoreVO> selectStoreL() throws Exception {
		System.out.println("storel실행");		
		
		return boardMapper.selectStoreL();
	}*/
	
	@Transactional
	public List<StoreVO> selectStoreL(String sorted) throws Exception {
		System.out.println("storelsorted실행");		
		Map<String, String> paramMap = new HashMap<String, String>();
	    paramMap.put("sorted", sorted);
	    
		return boardMapper.selectStoreL(paramMap);
	}
	
	
	/*@Override
	@Transactional
	public List<StoreVO> selectStoreList() throws Exception {
		System.out.println("DAO의 selectStoreList 메소드 실행");
		return boardMapper.selectStoreList();
	}*/

	@Transactional
	public List<StoreVO> selectStoreListA(String sorted) throws Exception {
		System.out.println("storelistA실행");		
		Map<String, String> paramMap = new HashMap<String, String>();
	    paramMap.put("sorted", sorted);
		return boardMapper.selectStoreListA(paramMap);
	}

	@Transactional
	public List<StoreVO> selectStoreListB(String sorted) throws Exception {
		System.out.println("storelistB실행");		
		Map<String, String> paramMap = new HashMap<String, String>();
	    paramMap.put("sorted", sorted);
		return boardMapper.selectStoreListB(paramMap);
	}

	@Transactional
	public List<StoreVO> selectStoreListC(String sorted) throws Exception {
		System.out.println("storelistC실행");		
		Map<String, String> paramMap = new HashMap<String, String>();
	    paramMap.put("sorted", sorted);
		return boardMapper.selectStoreListC(paramMap);
	}

	@Transactional
	public List<StoreVO> selectStoreListD(String sorted) throws Exception {
		System.out.println("storelistD실행");		
		Map<String, String> paramMap = new HashMap<String, String>();
	    paramMap.put("sorted", sorted);
		return boardMapper.selectStoreListD(paramMap);
	}
	
	@Transactional
	public List<StoreVO> selectStoreListE(String sorted) throws Exception {
		System.out.println("storelistE실행");		
		Map<String, String> paramMap = new HashMap<String, String>();
	    paramMap.put("sorted", sorted);
		return boardMapper.selectStoreListE(paramMap);
	}
	
	
	

	@Override
	public StoreVO starAvarage(Integer storeid) throws Exception {
		return boardMapper.starAvarage(storeid);
	}

	@Override
	public void updateStarAvarage(float tasteStar, float costefStar, float serviceStar, Integer storeid, float star) throws Exception {
		boardMapper.updateStarAvarage(tasteStar, costefStar, serviceStar, storeid, star);
	}

	@Override
	public List<StoreVO> selectStoreIdList() throws Exception {
		return boardMapper.selectStoreIdList();
	}
	
	

}
