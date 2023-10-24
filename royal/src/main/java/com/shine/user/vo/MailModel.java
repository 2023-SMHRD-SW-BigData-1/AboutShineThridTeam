package com.shine.user.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MailModel {
	private String address;
    private String title;
    private String message;
	public MailModel(String address, String title, String message) {
		super();
		this.address = address;
		this.title = title;
		this.message = message;
	}
	public String getAddress() {
		return address;
	}
	public String getTitle() {
		return title;
	}
	public String getMessage() {
		return message;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public MailModel() {
	}
}
