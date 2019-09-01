package com.tistory.pentode.service.dao;

import java.util.List;

import com.tistory.pentode.vo.MukkitVO;

public interface MukkitDAO {
	List<MukkitVO> selectMukkitList() throws Exception;
	List<MukkitVO> selectMukkitList2(String memberid) throws Exception;
	List<MukkitVO> modifyListY(MukkitVO vo) throws Exception;
	List<MukkitVO> modifyListN(MukkitVO vo) throws Exception;
	List<MukkitVO> deleteList(MukkitVO vo) throws Exception;
	void insertList(MukkitVO vo) throws Exception;
}
