package com.tistory.pentode;

import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.tistory.pentode.vo.ReviewVO;
import com.tistory.pentode.vo.UserVO;
import com.tistory.pentode.domain.Criteria;
import com.tistory.pentode.domain.PageMaker;
import com.tistory.pentode.service.ReviewService;

@Controller
@RequestMapping("/review/*")
public class ReviewController {
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);

	@Resource(name="ReviewDAO")
	private ReviewService service;

	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void registerGET(UserVO membervo, Model model) throws Exception {
		logger.info("register get ...........");
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String registPOST(ReviewVO reviewvo, Model model, RedirectAttributes rttr) throws Exception {
		service.regist(reviewvo);
		return "redirect:/review/listAll";
	}

	@RequestMapping(value = "listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		logger.info("show all list......................");
		model.addAttribute("list", service.listAll());
	}

	@RequestMapping(value = "read", method = RequestMethod.GET)
	public void read(@RequestParam("reviewid") int reviewid, Model model) throws Exception {
		model.addAttribute("boardVO",service.read(reviewid));
	}

	@RequestMapping(value = "remove", method = RequestMethod.POST)
	public String remove(@RequestParam("reviewid") int reviewid, RedirectAttributes rttr) throws Exception {
		service.remove(reviewid);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/review/listAll";
	}

	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public void modifyGET(int reviewid, Model model) throws Exception {
		model.addAttribute(service.read(reviewid));
	}

	@RequestMapping(value = "modify", method = RequestMethod.POST)
	public String modifyPOST(ReviewVO reviewvo, RedirectAttributes rttr) throws Exception {
		logger.info("mod post............");
		service.modify(reviewvo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/review/listAll";
	}

	@RequestMapping(value = "listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception {
		logger.info("show list Page with Criteria......................");
		model.addAttribute("list", service.listCriteria(cri));
	}

	@RequestMapping(value = "listPage", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		logger.info(cri.toString());
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		// pageMaker.setTotalCount(131);
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		model.addAttribute("pageMaker", pageMaker);
	}

	@RequestMapping(value = "readPage", method = RequestMethod.GET)
	public void read(@RequestParam("reviewid") int reviewid, @ModelAttribute("cri") Criteria cri, Model model)
			throws Exception {
		model.addAttribute(service.read(reviewid));
	}

	@RequestMapping(value = "removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("reviewid") int reviewid, Criteria cri, RedirectAttributes rttr)
			throws Exception {
		service.remove(reviewid);
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/review/listPage";
	}

	@RequestMapping(value = "modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("reviewid") int reviewid, @ModelAttribute("cri") Criteria cri,
			Model model) throws Exception {
		model.addAttribute(service.read(reviewid));
	}
}