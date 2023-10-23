package com.shine.user.mapper;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.shine.user.model.MailModel;
import com.shine.user.model.UserModel;

@Mapper
public interface UserMapper {

	// 회원가입
	@Insert("insert into tb_user values (#{user_nick}, #{user_email}, #{user_pw}, #{user_name}, #{user_add}, #{user_phone}, null, sysdate, null, null, null)")
	public int join(UserModel m);

	// 로그인
	@Select("select * from tb_user where user_email=#{user_email} and user_pw=#{user_pw}")
	public UserModel login(UserModel m);

	// 회원정보수정
	@Update("update tb_user set user_nick=#{user_nick}, user_email=#{user_email}, user_pw=#{user_pw}, user_name=#{user_name}, user_add=#{user_add}, user_phone=#{user_phone}, user_modify_at=sysdate")
	public int update(UserModel m);

	// 비밀번호 찾기
	@Update("update tb_user set user_pw=#{user_pw} where user_email=#{user_email}")
	public int update(MailModel mmr);

}
