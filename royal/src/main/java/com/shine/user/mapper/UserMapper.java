package com.shine.user.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.shine.user.model.UserModel;

@Mapper
public interface UserMapper {
	
	// 회원가입
	@Insert("insert into tb_user values (#{user_nick}, #{user_email}, #{user_pw}, #{user_name}, #{user_add}, #{user_add_detail}, #{user_phone})")
	public int join(UserModel m);
	
	// 로그인
	@Select("select * from tb_user where user_email=#{user_email} and user_pw=#{user_pw}")
	public UserModel login(UserModel m);
	
	// 회원정보수정
	@Update("update tb_user set user_nick=#{user_nick}, user_email=#{user_email}, user_pw=#{user_pw}, user_name=#{user_name}, user_add=#{user_add}, user_phone=#{user_phone}")
	public int update(UserModel m);
	
	// 비밀번호 조회
	@Select("select user_pw from tb_user where user_email=#{user_email}, user_phone=#{user_phone}")
	public UserModel findpw(UserModel m);

	

}
