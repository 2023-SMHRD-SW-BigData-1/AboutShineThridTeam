package com.community.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class CommuVO {
	
	private int commuNo;
	private String userNick;
	private String commuTitle;
	private String commuText;
	private String commuIsDeleted;
	private String commuCreateAt;
	private String commuCreateNm;
	private String commuModifyAt;
	private String commuModifyNm;
}
