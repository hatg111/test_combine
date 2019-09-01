package com.tistory.pentode.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.tistory.pentode.service.MukkitService;
import com.tistory.pentode.service.dao.MukkitDAO;
import com.tistory.pentode.vo.MukkitVO;

@Service("mukkitService")
public class MukkitServiceImpl implements MukkitService {
	@Autowired
	private MukkitDAO boardMapper;

	@Override
	@Transactional
	public List<MukkitVO> selectMukkitList() throws Exception {
		System.out.println("DAO의 selectMukkitList 메소드 실행");
		return boardMapper.selectMukkitList();
		
		//원래는 DAO를 구현한 클래스(Impl)에 정의된 메소드를 통해서 가는건데
		//여기서는 DAO구현 클래스 없이 알아서 메소드 이름과 같은 매퍼파일을 찾아서 간다. (Tb_Board_SQL.xml)
	}
	
	@Override
	public List<MukkitVO> selectMukkitList(String memberid) throws Exception {
		
		return boardMapper.selectMukkitList2(memberid);
	}

	@Override
	public List<MukkitVO> modifyList(MukkitVO vo) throws Exception {
		
		
		if (vo.getVisitcheck().equals("N")) {
			//System.out.println("DAO의 modifyListY 메소드 실행");
			return boardMapper.modifyListY(vo);
		} else {
			//System.out.println("DAO의 modifyListN 메소드 실행");
			return boardMapper.modifyListN(vo);
		}
		
	}

	@Override
	public List<MukkitVO> deleteList(MukkitVO vo) throws Exception {
		return boardMapper.deleteList(vo);
	}
	
	@Override
	public void insertList(MukkitVO vo) throws Exception {
		List<MukkitVO> mukkit = boardMapper.selectMukkitList2(vo.getMemberid());
		
		Exception e = new Exception("기존에 있는 먹킷리스트면 예외처리");

		for(MukkitVO mukkitvo : mukkit){
			if(vo.getStoreid() == mukkitvo.getStoreid()) {
				 throw  e;
			}
		}
		
		boardMapper.insertList(vo);
	}

	

}
