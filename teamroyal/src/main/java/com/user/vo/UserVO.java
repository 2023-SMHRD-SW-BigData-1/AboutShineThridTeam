package com.user.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class UserVO {

	private String userNick; //사용자 아이디
	private String userEmail; //사용자 이메일
	private String userRole; //권한
	private String userNm; //사용자 명
	private String userAdd; //주소
	private String userPhone; //전화번호
	private String userPw; //비밀번호
	private String userIsdeleted; //삭제여부
	private String userCreateAt; //생성일
	private String userCreateNm; //생성자
	private String userModifyAt; //수정일
	private String userModifyNm; //수정자
	public String getUserNick() {
		return userNick;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public String getUserRole() {
		return userRole;
	}
	public String getUserNm() {
		return userNm;
	}
	public String getUserAdd() {
		return userAdd;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public String getUserPw() {
		return userPw;
	}
	public String getUserIsdeleted() {
		return userIsdeleted;
	}
	public String getUserCreateAt() {
		return userCreateAt;
	}
	public String getUserCreateNm() {
		return userCreateNm;
	}
	public String getUserModifyAt() {
		return userModifyAt;
	}
	public String getUserModifyNm() {
		return userModifyNm;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	public void setUserAdd(String userAdd) {
		this.userAdd = userAdd;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public void setUserIsdeleted(String userIsdeleted) {
		this.userIsdeleted = userIsdeleted;
	}
	public void setUserCreateAt(String userCreateAt) {
		this.userCreateAt = userCreateAt;
	}
	public void setUserCreateNm(String userCreateNm) {
		this.userCreateNm = userCreateNm;
	}
	public void setUserModifyAt(String userModifyAt) {
		this.userModifyAt = userModifyAt;
	}
	public void setUserModifyNm(String userModifyNm) {
		this.userModifyNm = userModifyNm;
	}
}
