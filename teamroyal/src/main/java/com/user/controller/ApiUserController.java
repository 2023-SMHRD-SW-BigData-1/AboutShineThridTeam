package com.user.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.user.service.UserService;
import com.user.vo.UserVO;

@Controller
@RequestMapping("/api")
public class ApiUserController {
	
	@Autowired
	private UserService userService;
	

	
	@RequestMapping(value = "/apijoin", method = RequestMethod.POST)
	@ResponseBody
	public String join(@RequestParam("ShineMember") String jsonData , HttpSession session) throws Exception {

		System.out.println("ShineMember::::::::::" + jsonData);
		
		Gson gson = new Gson();
		Map<String, Object> dataMap = gson.fromJson(jsonData, Map.class);

//		
		System.out.println("gson::::::::::" + dataMap);
		
		UserVO userVo = new UserVO();
		userVo.setUserNm(dataMap.get("user_name").toString());
		userVo.setUserAdd(dataMap.get("user_add").toString());
		userVo.setUserEmail(dataMap.get("user_email").toString());
		userVo.setUserNick(dataMap.get("user_nick").toString());
		userVo.setUserPhone(dataMap.get("user_phone").toString());
		userVo.setUserPw(dataMap.get("user_pw").toString());
		
		System.out.println("userVo::::::::::" + userVo);
		
		//회원가입 서비스 실행
		Map<String, Object> reMap = userService.userInfoInsert(userVo);
		
		return reMap.get("reCode").toString();
	}

}
