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


	

}
