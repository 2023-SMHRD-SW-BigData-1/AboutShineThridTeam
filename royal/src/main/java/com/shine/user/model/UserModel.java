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
	
	private String user_nick;
	private String user_email;
	private String user_pw;
	private String user_name;
	private String user_add;
	private String user_phone;
	private String user_isdeleted;
	private String user_create_at;
	private String user_create_name;
	private String user_modify_at;
	private String user_modify_name;
	
	
	public UserModel(String user_nick, String user_email, String user_pw, String user_name, String user_add,
			String user_phone, String user_isdeleted, String user_create_at,
			String user_create_name, String user_modify_at, String user_modify_name) {
		super();
		this.user_nick = user_nick;
		this.user_email = user_email;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_add = user_add;
		this.user_phone = user_phone;
		this.user_isdeleted = user_isdeleted;
		this.user_create_at = user_create_at;
		this.user_create_name = user_create_name;
		this.user_modify_at = user_modify_at;
		this.user_modify_name = user_modify_name;
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
	public String getUser_isdeleted() {
		return user_isdeleted;
	}
	public String getUser_create_at() {
		return user_create_at;
	}
	public String getUser_create_name() {
		return user_create_name;
	}
	public String getUser_modify_at() {
		return user_modify_at;
	}
	public String getUser_modify_name() {
		return user_modify_name;
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
	public void setUser_isdeleted(String user_isdeleted) {
		this.user_isdeleted = user_isdeleted;
	}
	public void setUser_create_at(String user_create_at) {
		this.user_create_at = user_create_at;
	}
	public void setUser_create_name(String user_create_name) {
		this.user_create_name = user_create_name;
	}
	public void setUser_modify_at(String user_modify_at) {
		this.user_modify_at = user_modify_at;
	}
	public void setUser_modify_name(String user_modify_name) {
		this.user_modify_name = user_modify_name;
	}
	
	public UserModel(String user_nick, String user_email, String user_pw, 
			String user_name, String user_add, String user_phone) {
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
