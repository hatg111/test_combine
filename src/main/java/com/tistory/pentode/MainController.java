package com.tistory.pentode;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tistory.pentode.service.MukkitService;
import com.tistory.pentode.vo.MukkitVO;
import com.tistory.pentode.domain.SearchCriteria;
import com.tistory.pentode.service.MainService;
import com.tistory.pentode.vo.MainVO;

@Controller
public class MainController {
	//주입
	@Resource(name = "mainService")
	private MainService mainService;
	//MainService mainService = new MainService();

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);

		List<MainVO> main = mainService.selectMainList();

		logger.info(main.toString());

		model.addAttribute("main", main);

		return "main/mainpage";
	}
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String search(@ModelAttribute("Scri") SearchCriteria Scri, Model model) throws Exception {
		
		List<MainVO> main = mainService.DtListSearchCri(Scri);

		logger.info(main.toString());
		
		model.addAttribute("main", main);
		if(main.size() > 0) {
			return "main/mainpage";
		}else {
			return "main/mainpage2";
		}
		
	}

}
