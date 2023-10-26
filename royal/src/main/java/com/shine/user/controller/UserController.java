package com.shine.user.controller;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shine.user.service.UserService;
import com.shine.user.vo.UserVO;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	//로그인 화면 조회
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session, HttpServletResponse response){
		return "/Mypage/modification";
	}
	
	/**
	 * 회원가입
	 * @param UserVO userVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Login-Join/Login-Join.jsp
	 * 
	 * ------------이력------------
	 * 2023.10.24 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/login/join", method = RequestMethod.POST)
	public String join(
			@ModelAttribute UserVO userVo, 
			HttpSession session) {

		System.out.println("::::::::::" + userVo);
		//회원가입 서비스 실행
		Map<String, Object> reMap = userService.userInfoInsert(userVo);
		
		//코드로 성공 여부 확인
		String reString = reMap.get("reCode").toString();
		if(reString.equals("00")) {
			System.out.println("회원가입 성공");
			return "redirect:/";
		}else if(reString.equals("01")) {
			System.out.println("필수값 오류");
			return "redirect:/";
		}else {
			System.out.println("관리자 확인이 필요합니다.");
			return "redirect:/";
		}
	}

	/**
	 * 회원정보 수정
	 * @param UserVO userVo
	 * @param HttpSession session
	 * @param Map<String, Object>
	 * @return Map<String, Object>
	 * * ------------이력------------
	 * 2023.10.24 / 정윤지 / 최초 적용
	 */
	@RequestMapping(value = "/login/modify", method = RequestMethod.POST)
	public Map<String, Object> modify(
			@ModelAttribute UserVO userVo, 
			HttpSession session) {
		
		Map<String, Object> updateReMap = userService.userInfoUpdate(userVo);
		
		String reString = updateReMap.get("updateReCode").toString();
		if(reString.equals("22")) {
			System.out.println("회원수정 성공");
		}else if(reString.equals("01")) {
			System.out.println("필수값 오류");
		}else {
			System.out.println("관리자 확인이 필요합니다.");
		}
		return updateReMap;
	}
	
//	// 초기화면
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public ModelAndView index(Authentication auth) {
//		ModelAndView model = new ModelAndView("index");
//		LoginInfoVO userInfo = (LoginInfoVO) auth.getPrincipal();
//		model.addObject("user", userInfo);
//		return model;
//	}
	
}
