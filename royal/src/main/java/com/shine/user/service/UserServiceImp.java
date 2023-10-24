package com.shine.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.shine.user.dao.UserDAO;
import com.shine.user.vo.UserVO;

@Service
public class UserServiceImp implements UserService {
	
	@Autowired
	private PasswordEncoder passencoder;
	
	@Autowired
	private UserDAO userDao;

	//사용자 조회
	@Override
	public List<UserVO> userSelectList(String userNick) {
		return userDao.userSelectList(userNick);
	}
	
	//사용자 등록
	@Override
	public Map<String, Object> userInfoInsert(UserVO userVo) {
		Map<String, Object> reMap = new HashMap<String, Object>();
		if(userVo.getUserEmail() != null && userVo.getUserPw() != null) {
			userVo.setUserPw(passencoder.encode(userVo.getUserPw().toString()));
			System.out.println(userVo.getUserPw().toString());
			int dataCnt = userDao.userInfoInsert(userVo);
			if(dataCnt == 1) {
				reMap.put("reMsg", "등록 완료");
				reMap.put("reCode", "00");
			}else {
				reMap.put("reMsg", "등록 실패");
				reMap.put("reCode", "99");
			}
		}else {
			reMap.put("reMsg", "필수값 오류");
			reMap.put("reCode", "01");
		}
		return reMap;
	}

	// 사용자 로그인
	@Override
	public Map<String, Object> userLogin(String userEmail, String userPw) {
		Map<String, Object> loginMap = new HashMap<String, Object>();
		if(userEmail != null && userPw != null) {
			System.out.println(userEmail);
			List<UserVO> loginData = userDao.userLogin(userEmail.toString(), userPw.toString());
			if(loginData != null) {
				loginMap.put("loginMsg", "로그인 완료");
				loginMap.put("loginCode", "11");
			}else {
				loginMap.put("loginMsg", "로그인 실패");
				loginMap.put("loginCode", "88");
			}
		}else {
			loginMap.put("loginMsg", "필수값 오류");
			loginMap.put("loginCode", "01");
		}
		return loginMap;
	}

	// 사용자 수정
	@Override
	public Map<String, Object> userInfoUpdate(UserVO userVo){
		Map<String, Object> updateMap = new HashMap<String, Object>();
		if(userVo.getUserEmail() != null && userVo.getUserPw() != null) {
			System.out.println(userVo.getUserEmail()+"회원정보수정");
			int updateDataCnt = userDao.userInfoUpdate(userVo);
			if(updateDataCnt == 1) {
				updateMap.put("updateReMsg", "수정 완료");
				updateMap.put("updateReCode", "22");
			}else {
				updateMap.put("updateReMsg", "수정 실패");
				updateMap.put("updateReCode", "77");
			}
		}else {
			updateMap.put("updateReMsg", "필수값 오류");
			updateMap.put("updateReCode", "01");
		}
		return updateMap;
	}
	
	//사용자 비밀번호 초기화
	@Override
	public Map<String, Object> userPw(UserVO userVo) {
		Map<String, Object> reMap = new HashMap<String, Object>();
		if(userVo.getUserNick() != null) {
			String pwSt = "455345";
			
			userVo.setUserPw(passencoder.encode(pwSt));
			int dataCnt = userDao.userInfoUpdate(userVo);
			if(dataCnt == 1) {
				reMap.put("reMsg", "등록 완료");
				reMap.put("reCode", "00");
			}else {
				reMap.put("reMsg", "등록 실패");
				reMap.put("reCode", "99");
			}
		}else {
			reMap.put("reMsg", "필수값 오류");
			reMap.put("reCode", "01");
		}
		return reMap;
	}
}
