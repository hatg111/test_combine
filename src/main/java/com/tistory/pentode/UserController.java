package com.tistory.pentode;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Date;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.tistory.pentode.vo.UserVO;
import com.tistory.pentode.dto.LoginDTO;
import com.tistory.pentode.service.UserService;
import com.tistory.pentode.util.MediaUtils;
import com.tistory.pentode.util.UploadFileUtils;

@Controller
@RequestMapping("/user")
public class UserController {
	// 주입
	@Resource(name = "userService")
	private UserService userService;

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

	}

	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {

		UserVO vo = userService.login(dto);
		// 사용자 입력값으로 DB데이터를 조회해서 vo에 담는다.

		if (vo == null) {
			return;
		}
		System.out.println("로그인 성공" + "id: " + vo.getMemberid() + "nickname: " + vo.getNickname());
		logger.info(vo.toString());
		// vo가 null이 아니면 모델객체에 "userVO" 이름으로 담는다.
		model.addAttribute("userVO", vo);

		// isUseCookie를 체크하면 isUseCookie가 True로 넘어오겠지
		if (dto.isUseCookie()) {

			int amount = 60 * 60 * 24 * 7;
			// 일주일 동안 유지

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));
			System.out.println("session.getId()= " + session.getId());
			userService.keepLogin(vo.getMemberid(), session.getId(), sessionLimit);
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		Object obj = session.getAttribute("login");

		if (obj != null) {
			UserVO vo = (UserVO) obj;

			session.removeAttribute("login");
			session.invalidate();

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				userService.keepLogin(vo.getMemberid(), session.getId(), new Date());
			}
		}

		return "user/logout";
	}

	

	@RequestMapping(value = "/userInfo")
	public String registPOST(Model model, UserVO vo, RedirectAttributes rttr, HttpSession session) throws Exception {
		// session = request.getSession();
		vo = (UserVO) session.getAttribute("login");
		logger.info("regist post ...........");
		logger.info(vo.toString());

		// userService.getUserInfo(vo);
		model.addAttribute("userVo", vo);
		// rttr.addFlashAttribute("msg", "SUCCESS");
		// 리다이렉트하면 기존 model?객체가 다 비워져버리는데 그걸 방지하기 위해서
		// RedirectAttributes의 addFlashAttribute메소드를 사용한다.
		// (header가 아닌 세션을 통해 전달하므로 ? 뒤에 파라미터가 안 보인다. )

		return "user/userInfoForm";
	}

	// 용태님 start
	/*@RequestMapping(value = "/getUserList", method = RequestMethod.GET)
	public String getUserList(Model model) throws Exception {
		logger.info("getUserList()....");
		model.addAttribute("userList", userService.getUserList());
		System.out.println(userService.getUserList());
		return "user/userList";
	}*/

	
	@RequestMapping(value = "/insertUser", method = {RequestMethod.POST, RequestMethod.GET})
	public String insertUser(@ModelAttribute("userVO") UserVO userVO, RedirectAttributes rttr, HttpServletRequest request) throws Exception {
		System.out.println(userVO);
		userService.insertUser(userVO);
		return "redirect:/user/login";
	}
	

	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm(Model model) throws Exception {
		model.addAttribute("userVO", new UserVO());
		return "user/joinForm";
	}

	/*@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("userVO") UserVO userVO, RedirectAttributes rttr) throws Exception {
		userService.updateUser(userVO);
		return "redirect:/user/getUserList";
	}*/

	@RequestMapping(value = "/changePwdForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String changePwdForm(Model model, HttpSession session, UserVO userVO) throws Exception {
		userVO = (UserVO)session.getAttribute("login");
		model.addAttribute("userVO", userVO);
		return "user/changePwdForm";
	}
	
	@RequestMapping(value = "/changePwdSuccess", method = { RequestMethod.GET, RequestMethod.POST })
	public String updateUser(@ModelAttribute("userVO") UserVO userVO, Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		userService.updateUser(userVO);
		System.out.println(userVO);
		
		UserVO vo = (UserVO)session.getAttribute("login");
		vo.setNickname(userVO.getNewnickname());
		vo.setPassword(userVO.getNewpassword());
		System.out.println(vo.getNewnickname());
		System.out.println(vo.getNewpassword());
		session.setAttribute("login", vo);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/findPwdForm", method = RequestMethod.POST)
	public String findPwd() throws Exception{
		return "user/findPwdForm";
	}

	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "/userInfoForm", method = RequestMethod.GET)
	public void uploadForm() {
	}

	@RequestMapping(value = "/userInfoForm", method = RequestMethod.POST)
	public String uploadForm(MultipartFile file, Model model) throws Exception {

		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());

		model.addAttribute("savedName", savedName);

		return "uploadResult";
	}

	@RequestMapping(value = "/uploadAjax", method = RequestMethod.GET)
	public void uploadAjax() {
	}

	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		System.out.println("---------------------");

		UUID uid = UUID.randomUUID();

		String savedName = uid.toString() + "_" + originalName;

		File target = new File(uploadPath, savedName);

		FileCopyUtils.copy(fileData, target);

		return savedName;

	}

	
	
	@ResponseBody    
	@RequestMapping(value = "/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file, HttpSession session) throws Exception {
		logger.info("originalName: " + file.getOriginalFilename());
		UserVO vo = (UserVO) session.getAttribute("login");
		userService.insertImg(vo.getMemberid(), uploadPath + file.getOriginalFilename());
		return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()),
				HttpStatus.CREATED);
	}

	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {

		InputStream in = null;
		ResponseEntity<byte[]> entity = null;

		logger.info("FILE NAME: " + fileName);

		try {

			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

			MediaType mType = MediaUtils.getMediaType(formatName);

			HttpHeaders headers = new HttpHeaders();

			in = new FileInputStream(uploadPath + fileName);

			if (mType != null) {
				headers.setContentType(mType);
			} else {

				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition",
						"attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
			}

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}

	@ResponseBody
	@RequestMapping(value = "/deleteFile", method = RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName) {

		logger.info("delete file: " + fileName);

		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		MediaType mType = MediaUtils.getMediaType(formatName);

		if (mType != null) {

			String front = fileName.substring(0, 12);
			String end = fileName.substring(14);
			new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
		}

		new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}

	@ResponseBody
	@RequestMapping(value = "/deleteAllFiles", method = RequestMethod.POST)
	public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[] files) {

		logger.info("delete all files: " + files);

		if (files == null || files.length == 0) {
			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		}

		for (String fileName : files) {
			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

			MediaType mType = MediaUtils.getMediaType(formatName);

			if (mType != null) {

				String front = fileName.substring(0, 12);
				String end = fileName.substring(14);
				new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
			}

			new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

		}
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
	// 용태님 end

}
