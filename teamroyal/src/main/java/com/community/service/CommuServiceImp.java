package com.community.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.community.dao.CommuDAO;
import com.community.vo.CommuVO;

@Service
public class CommuServiceImp implements CommuService {

	@Autowired
	private CommuDAO commuDao;

	// 게시판 조회

	// 게시판 글쓰기
	@Override
	public Map<String, Object> commuWrite(CommuVO commuVo) {
		Map<String, Object> writeMap = new HashMap<String, Object>();
		if (commuVo.getUserNick() != null && commuVo.getCommuTitle() != null) {
			System.out.println(commuVo.getCommuTitle() + "글 등록");
			int WriteDataCnt = commuDao.CommuWrite(commuVo);
			if (WriteDataCnt == 1) {
				writeMap.put("writeMsg", "글등록 완료");
				writeMap.put("writeCode", "20");
			} else {
				writeMap.put("writeMsg", "글등록 실패");
				writeMap.put("writeCode", "80");
			}
		} else {
			writeMap.put("writeMsg", "필수값 오류");
			writeMap.put("writeCode", "01");
		}
		return writeMap;
	}

}
