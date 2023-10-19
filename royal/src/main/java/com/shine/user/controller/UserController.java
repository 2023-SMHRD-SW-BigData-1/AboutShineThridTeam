package com.shine.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shine.user.mapper.UserMapper;
import com.shine.user.model.UserModel;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserMapper mapper;

	// 회원가입
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(
			@RequestParam("user_nick") String user_nick, 
			@RequestParam("user_email") String user_email,
			@RequestParam("user_pw") String user_pw, 
			@RequestParam("user_name") String user_name,
			@RequestParam("user_add") String user_add,
			@RequestParam("user_add_detail") String user_add_detail,
			@RequestParam("user_phone") String user_phone,
			HttpSession session) {

		System.out.println(user_email + ", " + user_pw);

		UserModel m = new UserModel(user_nick, user_email, user_pw, user_name, user_add, user_add_detail, user_phone);

		int cnt = mapper.join(m);

		if (cnt > 0) {
			return "redirect:/";
		} else {
			System.out.println("회원가입 실패");
			return "redirect:/";
		}
	}

	// 로그인
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@RequestParam("user_email") String user_email, @RequestParam("user_pw") String user_pw,
			HttpSession session) {
		UserModel loginUser = new UserModel(user_email, user_pw);

		UserModel result = mapper.login(loginUser);

		if (result != null) {
			// 세션(HttpSession)에 회원정보를 저장
			session.setAttribute("result", result);

			return "redirect:/";
		} else {
			System.out.println("로그인 실패");
			return "redirect:/";
		}
	}

	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	// 회원정보수정
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(@ModelAttribute UserModel m, HttpSession session) {

		UserModel modifyUser = (UserModel) session.getAttribute("loginUser");

		m.setUser_email(modifyUser.getUser_email());

		int cnt = mapper.update(m);

		if (cnt > 0) { // 수정성공
			session.setAttribute("loginUser", m);
			return "redirect:/";
		} else { // 수정실패
			return "redirect:/";
		}
	}

	// 비밀번호찾기

	@RequestMapping(value = "/findpw", method = RequestMethod.POST)
	public String findpw(@RequestParam("user_email") String user_email, @RequestParam("user_phone") String user_phone, HttpSession session) {

		System.out.println("findpw 입장");

		 UserModel findUser = new UserModel(user_email, user_phone);

		UserModel result = mapper.login(findUser);

		int flag = 0;

		if (result != null) {

			session.setAttribute("result", result);

			String userFindPw = result.getUser_pw();
			int pwSize = userFindPw.length() / 2;

			String resultPwd_1 = userFindPw.substring(0, pwSize);

			// 뒤의 절반은 *로 표시
			String tmp = "";
			if (pwSize % 2 == 1) { // 홀수인 경우 * 한개 더 추가
				for (int i = 0; i < pwSize + 1; i++) {
					tmp += "*";
				}
			} else {
				for (int i = 0; i < pwSize; i++) {
					tmp += "*";
				}
			}
			String resultPwd = resultPwd_1 + tmp;

			flag = 1;

			findUser.setUser_pw(resultPwd);

			session.setAttribute("user_email", user_email);
			session.setAttribute("user_phone", user_phone);

		} else {
			flag = 2;
			System.out.println("회원정보가 없습니다.");
		}
		session.setAttribute("flag", flag);

		return "redirect:/";
	}

}
