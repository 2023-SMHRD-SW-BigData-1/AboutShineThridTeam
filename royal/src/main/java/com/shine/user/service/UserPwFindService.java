package com.shine.user.service;

import org.apache.ibatis.session.SqlSession;

import com.shine.user.model.UserModel;

public class UserPwFindService {

	//회원 비밀번호 가져오기
		public UserModel pwFind_select( UserModel UserModel ) {
			UserModel to = SqlSession.selectOne("pwFind_select", UserModel);
			return to;
		}
		
}
