package com.community.service;

import java.util.Map;

import com.community.vo.CommuVO;

public interface CommuService {
	
	// 게시판 조회
	
	// 게시판 글쓰기
	Map<String, Object> commuWrite(CommuVO commuVo);

}
