package com.tistory.pentode;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.tistory.pentode.service.FeedbackService;
import com.tistory.pentode.util.UploadFileUtil;
import com.tistory.pentode.vo.FeedbackVO;
import com.tistory.pentode.vo.StoreVO;
import com.tistory.pentode.vo.UserVO;

@Controller
@SessionAttributes("uservo")
public class FeedbackController {
	private static final Logger logger = LoggerFactory.getLogger(FeedbackController.class);

	@Resource
	private FeedbackService service;

	/*@Resource(name = "upload")*/
	private String upload;

	@RequestMapping(value = "/feedback/register", method = RequestMethod.GET)
	public void registerGET(@RequestParam("storeid") Integer storeid, StoreVO storevo, UserVO uservo, Model model,
			HttpSession session, HttpServletRequest request) throws Exception {

		session.getAttribute("login");
		uservo = (UserVO) session.getAttribute("login");
		model.addAttribute("uservo", uservo);

		model.addAttribute("storevo", storevo);

	}

	@RequestMapping(value = "/feedback/Success", method = RequestMethod.POST)
	public String registerSuccesspo(@ModelAttribute("feedbackvo") FeedbackVO feedbackvo, MultipartFile file,
			Model model, HttpServletResponse res, HttpServletRequest req, HttpSession session) throws Exception {

		String imgUploadPath = upload + File.separator + "imgUpload";
		String ymdPath = UploadFileUtil.calcPath(imgUploadPath);
		String fileName = null;

		if (file != null) {
			fileName = UploadFileUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = upload + File.separator + "images" + File.separator + "none.png";
		}

		feedbackvo.setImgname(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		feedbackvo.setThumbimg(
				File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);

		/*
		 * MultipartFile uploadfile = feedbackvo.getUploadfile(); if (uploadfile !=
		 * null) { String fileName = uploadfile.getOriginalFilename();
		 * 
		 * feedbackvo.setImgname(fileName); try { // 2. File 사용 File file = new
		 * File(upload + fileName); uploadfile.transferTo(file);
		 * 
		 * } catch (IOException e) { e.printStackTrace(); } }
		 */
		service.regist(feedbackvo);
		model.addAttribute("feedbackvo", feedbackvo);

		return "/feedback/Success";
	}

	// 게시물 수정
	@RequestMapping(value = "/feedback/reviewupdate", method = RequestMethod.GET)
	public void getUpdate(@RequestParam("storeid") int storeid, @RequestParam("reviewid") int reviewid, Model model,
			FeedbackVO feedbackvo, HttpSession session, UserVO uservo) throws Exception {

		session.getAttribute("login");
		uservo = (UserVO) session.getAttribute("login");
		model.addAttribute("uservo", uservo);

		FeedbackVO view = null;
		view = service.updateread(reviewid);
		model.addAttribute("view", view);
	}

	// 게시물 수정
	@RequestMapping(value = "/feedback/reviewupdate", method = RequestMethod.POST)
	public String postUpdate(FeedbackVO vo, Model model) throws Exception {

		service.reviewupdate(vo);
		model.addAttribute("vo", vo);
		return "/feedback/reviewupdateSuccess";
	}

	// 게시물 삭제
	@RequestMapping(value = "/feedback/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public String getDelete(@RequestParam("storeid") int storeid, @RequestParam("reviewid") int reviewid, Model model,
			FeedbackVO vo, HttpSession session, UserVO uservo) throws Exception {

		session.getAttribute("login");
		uservo = (UserVO) session.getAttribute("login");
		model.addAttribute("uservo", uservo);

		FeedbackVO delete = null;
		delete = service.updateread(reviewid);
		model.addAttribute("delete", delete);

		service.deletereview(vo.getReviewid());
		model.addAttribute("feedbackvo", vo);

		return "/feedback/deleteSuccess";
	}
}
