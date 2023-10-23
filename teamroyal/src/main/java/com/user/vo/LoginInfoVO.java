package com.user.vo;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginInfoVO implements UserDetails {
	// web form
		private String username;
		private String password;
		
		private String userNick; //사용자 아이디
		private String userEmail; //사용자 이메일
		private String userRole; //권한
		private String userNm; //사용자 명
		private String userAdd; //주소
		private String userPhone; //전화번호
		
		
		//권한
		private List<String> auths;

		@Override
		public Collection<? extends GrantedAuthority> getAuthorities() {
			List<GrantedAuthority> authorities = new ArrayList<>();
	        for (String auth : this.auths) {
	            authorities.add(new SimpleGrantedAuthority(auth));
	        }
	        return authorities;
		}
		
		//계정의 만료 여부 리턴
		@Override
		public boolean isAccountNonExpired() {
			return true;
		}

		//계정의 잠김 여부 리턴
		@Override
		public boolean isAccountNonLocked() {
			return true;
		}

		//비밀번호 만료 여부 리턴
		@Override
		public boolean isCredentialsNonExpired() {
			return true;
		}
		
		//계정의 활성화 여부 리턴
		@Override
		public boolean isEnabled() {
			return true;
		}
		
		public LoginInfoVO(UserVO userVo) {
			this.userNick = userVo.getUserNick();
			this.userEmail = userVo.getUserEmail();
			this.userRole = userVo.getUserRole();
			this.userNm = userVo.getUserNm();
			this.userAdd = userVo.getUserAdd();
			this.userPhone = userVo.getUserPhone();
			this.password = userVo.getUserPw();
			this.username = userVo.getUserNick();
		}

		@Override
		public String getPassword() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public String getUsername() {
			// TODO Auto-generated method stub
			return null;
		}

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

		public List<String> getAuths() {
			return auths;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public void setPassword(String password) {
			this.password = password;
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

		public void setAuths(List<String> auths) {
			this.auths = auths;
		}
		
}
