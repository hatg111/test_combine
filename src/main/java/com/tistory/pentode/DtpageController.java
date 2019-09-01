package com.tistory.pentode;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tistory.pentode.service.MukkitService;
import com.tistory.pentode.service.StoreinsertService;
import com.tistory.pentode.vo.MukkitVO;
import com.tistory.pentode.vo.StoreVO;
import com.tistory.pentode.vo.UserVO;
import com.tistory.pentode.domain.Criteria;
import com.tistory.pentode.domain.PageMaker;
import com.tistory.pentode.domain.SearchCriteria;
import com.tistory.pentode.service.DtpageService;
import com.tistory.pentode.service.MainService;
import com.tistory.pentode.vo.AttachreviewimgVO;
import com.tistory.pentode.vo.FeedbackVO;
import com.tistory.pentode.vo.MainVO;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/main/*")
public class DtpageController {

	@Inject
	private DtpageService service;

	private static final Logger logger = LoggerFactory.getLogger(DtpageController.class);

	/*@RequestMapping(value = "dtpage", method = RequestMethod.GET)
	public String registerGET(@RequestParam("storeid") int storeid, MainVO mainvo, Model model) throws Exception {
		List<MainVO> list = service.selectDtpageList(storeid);
		// 서비스의 메소드 -> dao의 메소드 실행 -> 쿼리 날려 -> vo로 받아서 다시 백백

		model.addAttribute("main", list);

		return "main/dtpage";

	}*/

	@Resource(name = "StoreinsertDAO")
	private StoreinsertService sinsertservice;

	@RequestMapping(value = "storeinsert", method = RequestMethod.GET)
	public void registerGET(StoreVO in, Model model) throws Exception {
		logger.info("register get ...........");
	}

	
	//맛집 정보 추가(url로 접근하도록 하자)
	@RequestMapping(value = "storeinsert", method = RequestMethod.POST)
	public String registPOST(@ModelAttribute("StoreVO") StoreVO StoreVO, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("register post ...........");
		sinsertservice.storeinsert(StoreVO);
		return "/main/insertsuccess";
	}
	/*@RequestMapping(value = "dtpage", method = RequestMethod.GET)
	public String dtpageSearch(@ModelAttribute("Scri") SearchCriteria Scri){
		
		
	}*/
	
	@RequestMapping(value = "dtpage", method = RequestMethod.GET)
	public String registerGET(@RequestParam("storeid") Integer storeid, MainVO mainvo, AttachreviewimgVO reviewimg,
			@ModelAttribute("cri") Criteria cri, Model model, FeedbackVO feedbackvo, UserVO uservo) throws Exception {
		//dtpage
		List<MainVO>main = service.selectDtpageList(storeid);
		//feedbackpage
		List<FeedbackVO> list = service.selectFeedbackList(storeid);

		logger.info(cri.toString());
		
		model.addAttribute("listAll", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		// pageMaker.setTotalCount(131);
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		model.addAttribute("pageMaker", pageMaker);

		logger.info(list.toString());
		logger.info(main.toString());

		model.addAttribute("main", main);
		model.addAttribute("list", list);

		return "/main/dtpage";

	}
	@RequestMapping(value = "/listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception {
	logger.info("show list Page with Criteria......................");
	model.addAttribute("list", service.listCriteria(cri));
	}	

}
