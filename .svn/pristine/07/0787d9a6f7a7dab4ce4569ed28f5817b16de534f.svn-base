package com.tistory.pentode;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

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


import com.tistory.pentode.service.UserrankingService;
import com.tistory.pentode.vo.UserrankingVO;
import com.tistory.pentode.service.MainService;
import com.tistory.pentode.vo.MainVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserrankingController {
	
	
	//주입
	@Resource(name = "userrankingService")
	private UserrankingService userrankingService;

	private static final Logger logger = LoggerFactory.getLogger(UserrankingController.class);


	@RequestMapping(value = "/userranking")
	public String boardList(Model model) throws Exception {

		List<UserrankingVO> list = userrankingService.selectUserrankingList();

		logger.info(list.toString());

		model.addAttribute("userrankinglist", list);

		return "userranking/userranking";
		
	}
	
/*	@Resource(name = "boardService")
	private BoardService boardService;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	*//**
	 * Simply selects the home view to render by returning its name.
	 *//*
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "user/userlist";
	}*/
	/*
	@RequestMapping(value = "/boardList.do")
	public String boardList(Model model) throws Exception {

	    List<BoardVO> list = boardService.selectBoardList();

	    logger.info(list.toString());

	    model.addAttribute("list", list);

	    return "boardList";
	}
	*/
}
