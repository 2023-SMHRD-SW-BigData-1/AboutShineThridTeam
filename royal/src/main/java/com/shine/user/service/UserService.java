package com.shine.user.service;

import java.util.List;
import java.util.Map;

import com.shine.user.vo.UserVO;

public interface UserService {

	//사용자 조회
	List<UserVO> userSelectList(String userNick);
	
	// 사용자 로그인
	Map<String, Object> userLogin(String userEmail, String userPw);
	
	//사용자 등록
	Map<String, Object> userInfoInsert(UserVO userVo);
	
	//사용자 수정
	Map<String, Object> userInfoUpdate(UserVO userVo);
	
	//사용자 삭제
	
	//사용자 비밀번호 초기화
	Map<String, Object> userPw(UserVO userVo);
	
	//
	
	
	
}
