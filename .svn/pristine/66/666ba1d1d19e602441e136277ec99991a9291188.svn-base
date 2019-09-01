package com.tistory.pentode.service.impl;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import com.tistory.pentode.vo.UserVO;
import com.tistory.pentode.dto.LoginDTO;
import com.tistory.pentode.service.UserService;
import com.tistory.pentode.service.dao.UserDAO;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);
	}

	@Override
	public void keepLogin(String memberid, String sessionId, Date next) throws Exception {

		dao.keepLogin(memberid, sessionId, next);

	}

	@Override
	public UserVO checkLoginBefore(String value) {

		return dao.checkUserWithSessionKey(value);
	}

	@Override
	public UserVO getUserInfo(UserVO vo) {
		return dao.getUserInfo(vo);
	}
	
	
	//용태님 start
	@Override
	public List<UserVO> getUserList() throws Exception {
		return dao.getUserList();
	}
	@Override
	public UserVO getUserInfo2(String uid) throws Exception {
		return dao.getUserInfo2(uid);
	}

	@Override
	public void insertUser(UserVO userVO) throws Exception {
		dao.insertUser(userVO);
	}

	@Override
	public void updateUser(UserVO userVO) throws Exception {
		dao.updateUser(userVO);
	}

	@Override
	public void deleteUser(String uid) throws Exception {
		dao.deleteUser(uid);
	}
	
	/*@Override
	public boolean loginCheck(UserVO userVo, HttpSession session) {
		boolean result = dao.loginCheck(userVo);
		
		if(result) {
			UserVO userVo = viewUser(userVo);
			session.setAttribute("ID", userVo.getMemberid());
			session.setAttribute("nickname", userVo.getNickname());		
		}
		return result;
	}*/
	@Override
	public void insertImg(String memberid, String fileName) throws Exception {
		System.out.println("121231212412412412412");
		System.out.println(memberid);
		System.out.println(fileName);
		dao.insertImg(memberid, fileName);
	}
	
	
	/*@Override
	public UserVO viewUser(UserVO userVo) {
		return dao.viewUser(userVo);
	}
	
	@Override
	public void logout2(HttpSession session) {
		session.invalidate();
	}*/
	//용태님 end


	
}
