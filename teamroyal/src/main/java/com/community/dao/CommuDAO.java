package com.community.dao;

import org.apache.ibatis.annotations.Mapper;

import com.community.vo.CommuVO;

@Mapper
public interface CommuDAO {

	// 게시판 조회

	// 게시판 글등록
	int CommuWrite(CommuVO commuVo);

}
