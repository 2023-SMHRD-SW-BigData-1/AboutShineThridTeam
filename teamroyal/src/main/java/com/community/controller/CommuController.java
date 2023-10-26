package com.community.controller;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.community.service.CommuService;
import com.community.vo.CommuVO;


@Controller
@RequestMapping("/user/login")
public class CommuController {
	
	@Autowired
	private CommuService commuSerivce;
	
	
	// 게시판 조회
	@RequestMapping(value="/community/list", method= {RequestMethod.GET, RequestMethod.POST})
	public String commuList(Model model, HttpServletResponse response) {
		
		return "/community/comm-list";
	}
	
	//게시판 글쓰기
	@RequestMapping(value="/community/write", method=RequestMethod.POST)
	public String write(@ModelAttribute CommuVO commuVo, HttpSession session) {
		
		Map<String, Object> writeMap = commuSerivce.commuWrite(commuVo);
		
		String reString = writeMap.get("writeCode").toString();
		if (reString.equals("20")) {
			System.out.println("글쓰기 성공");
			return "redirect:/";
		} else if (reString.equals("01")) {
			System.out.println("회원가입 필수값 오류");
			return "redirect:/";
		} else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/";
		}
	}
	
	
	

}
