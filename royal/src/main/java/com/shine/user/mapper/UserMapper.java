package com.shine.user.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.shine.user.model.UserModel;

@Mapper
public interface UserMapper {
	
	// 회원가입
	@Insert("insert into tb_user values (#{user_nick},#{user_email}, #{user_pw}, #{user_name}, #{user_add}, #{user_phone})")
	public int join(UserModel m);
	
	// 로그인
	@Select("select * from tb_user where user_email=#{user_email} and user_pw=#{user_pw}")
	public UserModel login(UserModel m);
	

}
