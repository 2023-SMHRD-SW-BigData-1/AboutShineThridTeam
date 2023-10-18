package com.shine.user.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class UserModel {
	
	private int idx;
	private String user_nick;
	private String user_email;
	private String user_pw;
	private String user_name;
	private String user_add;
	private String user_phone;


	public UserModel(String user_nick, String user_email, String user_pw, 
			String user_name, String user_add, String user_phone) {
		super();
		this.user_nick = user_nick;
		this.user_email = user_email;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_add = user_add;
		this.user_phone = user_phone;
		
	}
	
	public UserModel(String user_email, String user_pw) {
		super();
		this.user_email = user_email;
		this.user_pw = user_pw;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public void setUser_add(String user_add) {
		this.user_add = user_add;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public int getIdx() {
		return idx;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public String getUser_email() {
		return user_email;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getUser_add() {
		return user_add;
	}

	public String getUser_phone() {
		return user_phone;
	}


	

}
