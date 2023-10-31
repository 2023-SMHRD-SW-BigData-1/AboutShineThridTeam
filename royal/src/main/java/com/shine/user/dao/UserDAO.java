package com.shine.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.shine.user.vo.UserVO;

@Mapper
public interface UserDAO {

	// 사용자 조회
	List<UserVO> userSelectList(String userNick);

	// 사용자 로그인
	List<UserVO> userLogin(String userEmail, String userPw);

	// 사용자 등록
	int userInfoInsert(UserVO userVo);

	// 사용자 수정
	int userInfoUpdate(UserVO userVo);

}