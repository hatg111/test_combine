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
@RestController
public class MukkitRestController {

	// 주입
	@Resource(name = "mukkitService")
	private MukkitService mukkitService;

	private static final Logger logger = LoggerFactory.getLogger(MukkitRestController.class);

	@RequestMapping(value = "/mukkitList/{memberid}", method = RequestMethod.GET)
	public ResponseEntity<List<MukkitVO>> mukkitList(@PathVariable("memberid") String memberid) {
		
		ResponseEntity<List<MukkitVO>> entity = null;
		try {
			List<MukkitVO> list = mukkitService.selectMukkitList(memberid);
			entity = new ResponseEntity<List<MukkitVO>>(list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<MukkitVO>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "/mukkitList/delete/{memberid}/{storeid}", method = RequestMethod.DELETE)
	public ResponseEntity<String> mukkitListDelete(@PathVariable("memberid") String memberid, 
			@PathVariable("storeid") Integer storeid, MukkitVO vo) {
		vo.setStoreid(storeid);
		vo.setMemberid(memberid);
		
		ResponseEntity<String> entity = null;
		try {
			mukkitService.deleteList(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value = "/mukkitList/check/{memberid}/{storeid}/{visitcheck}", method = { RequestMethod.PUT, RequestMethod.PATCH })
	public ResponseEntity<String> mukkitListCheck(@PathVariable("memberid") String memberid, 
			@PathVariable("storeid") Integer storeid, @PathVariable("visitcheck") String visitcheck, MukkitVO vo) {
		vo.setStoreid(storeid);
		vo.setMemberid(memberid);
		vo.setVisitcheck(visitcheck);
		
		ResponseEntity<String> entity = null;
		try {
			mukkitService.modifyList(vo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	

	/*
	 * @RequestMapping(value = "/check/{memberid}/{storename}", method = {
	 * RequestMethod.PUT, RequestMethod.PATCH }) public ResponseEntity<String>
	 * update(@PathVariable("memberid") String memberid, @PathVariable("storename")
	 * String storename, @RequestBody MukkitVO vo) {
	 * 
	 * ResponseEntity<String> entity = null; try { vo.setMemberid(memberid);
	 * vo.setStorename(storename); mukkitService.modifyList(vo);
	 * 
	 * entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK); } catch
	 * (Exception e) { e.printStackTrace(); entity = new
	 * ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); } return
	 * entity; }
	 */

	/*
	 * @RequestMapping(value = "/modifyPage", method = RequestMethod.POST) public
	 * String modifyPagingPOST(BoardVO board, SearchCriteria cri, RedirectAttributes
	 * rttr) throws Exception {
	 * 
	 * logger.info(cri.toString()); service.modify(board);
	 * 
	 * rttr.addAttribute("page", cri.getPage()); rttr.addAttribute("perPageNum",
	 * cri.getPerPageNum()); rttr.addAttribute("searchType", cri.getSearchType());
	 * rttr.addAttribute("keyword", cri.getKeyword());
	 * 
	 * rttr.addFlashAttribute("msg", "SUCCESS");
	 * 
	 * logger.info(rttr.toString());
	 * 
	 * return "redirect:/sboard/list"; }
	 */

	/*
	 * @RequestMapping(value = "/{rno}", method = { RequestMethod.PUT,
	 * RequestMethod.PATCH }) public ResponseEntity<String>
	 * update(@PathVariable("rno") Integer rno, @RequestBody ReplyVO vo) {
	 * 
	 * ResponseEntity<String> entity = null; try { vo.setRno(rno);
	 * service.modifyReply(vo);
	 * 
	 * entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK); } catch
	 * (Exception e) { e.printStackTrace(); entity = new
	 * ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST); } return
	 * entity; }
	 */

	/*@RequestMapping(value = "/{rno}", method = RequestMethod.DELETE)
	public ResponseEntity<String> remove(@PathVariable("rno") Integer rno) {

		ResponseEntity<String> entity = null;
		try {
			service.removeReply(rno);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}*/

}
