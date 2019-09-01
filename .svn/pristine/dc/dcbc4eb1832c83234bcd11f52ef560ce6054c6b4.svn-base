package com.tistory.pentode;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tistory.pentode.service.MukkitService;
import com.tistory.pentode.vo.MukkitVO;
import com.tistory.pentode.vo.UserVO;
import com.tistory.pentode.service.MainService;
import com.tistory.pentode.vo.MainVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MukkitController {

	// 주입
	@Resource(name = "mukkitService")
	private MukkitService mukkitService;

	private static final Logger logger = LoggerFactory.getLogger(MukkitController.class);

	@RequestMapping(value = "/mukkitList")
	public String boardList(Model model, UserVO vo, HttpSession session) throws Exception {
		vo = (UserVO) session.getAttribute("login");

		logger.info(vo.toString());

		model.addAttribute("userVo", vo);
		return "mukkitlist/list";
	}

	@RequestMapping(value = "/mukkitList/insert", method = RequestMethod.GET)
	public String mukkitListInsert(@RequestParam("storeid") Integer storeid, MukkitVO vo, UserVO userVo,
			HttpSession session) {
		try {
			vo.setStoreid(storeid);
			logger.info(vo.toString());
			userVo = (UserVO) session.getAttribute("login");
			vo.setMemberid(userVo.getMemberid());

			logger.info(vo.toString());

			mukkitService.insertList(vo);

		} catch (Exception e) {
			e.printStackTrace();
			return "mukkitlist/insertfail";
		}
		return "mukkitlist/insertsuccess";
	}
	/*
	 * @RequestMapping(value = "/mukkitList") public String boardList(Model model)
	 * throws Exception {
	 * 
	 * List<MukkitVO> list = mukkitService.selectMukkitList(); //서비스의 메소드 -> dao의
	 * 메소드 실행 -> 쿼리 날려 -> vo로 받아서 다시 백백
	 * 
	 * logger.info(list.toString());
	 * 
	 * model.addAttribute("mukkitlist", list);
	 * 
	 * return "mukkitlist/list";
	 * 
	 * }
	 */

	/*
	 * @RequestMapping(value = "mukkitList/modifyPage", method = RequestMethod.POST)
	 * public String modifyPagingPOST(MukkitVO vo, RedirectAttributes rttr) throws
	 * Exception { System.out.println("vo객체가 잘 받아와졌나?" + vo.getStoreid());
	 * List<MukkitVO> list = mukkitService.modifyList(vo);
	 * 
	 * rttr.addAttribute(list);
	 * 
	 * logger.info(list.toString());
	 * 
	 * return "redirect:/mukkitList"; }
	 */

	/*
	 * @RequestMapping(value = "mukkitList/delete", method = RequestMethod.POST)
	 * public String deletePagingPOST(MukkitVO vo, RedirectAttributes rttr) throws
	 * Exception { //System.out.println("vo객체가 잘 받아와졌나?" + vo.getStoreid());
	 * List<MukkitVO> list = mukkitService.deleteList(vo);
	 * 
	 * rttr.addAttribute(list);
	 * 
	 * logger.info(list.toString());
	 * 
	 * return "redirect:/mukkitList"; }
	 */
}
