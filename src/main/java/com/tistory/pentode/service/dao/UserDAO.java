package com.tistory.pentode.service.dao;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;

import com.tistory.pentode.vo.UserVO;
import com.tistory.pentode.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;

	public void keepLogin(@Param("uid") String uid, @Param("sessionId") String sessionId, @Param("next") Date next);

	public UserVO checkUserWithSessionKey(String value);

	public UserVO getUserInfo(UserVO vo);

	// 용태님 start
	public List<UserVO> getUserList() throws Exception;

	public UserVO getUserInfo2(String uid) throws Exception;

	public int insertUser(UserVO userVO) throws Exception;

	public int updateUser(UserVO userVO) throws Exception;

	public int deleteUser(String uid) throws Exception;

	//public boolean loginCheck(UserVO userVo);

	/*public UserVO viewUser(UserVO userVo);

	public void logout2(HttpSession session);*/
	
	public void insertImg(@Param("memberid")String memberid, @Param("fileName")String fileName) throws Exception;

	public int GetKey(String memberid, String key) throws Exception;
	
	public int alter_userKey(String memberid, String key)throws Exception;
	// 용태님 end
}
