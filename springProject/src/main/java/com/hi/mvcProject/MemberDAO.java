package com.hi.mvcProject;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {
	@Autowired
	SqlSessionTemplate my;
	
	//회원가입
	public int create(MemberVO memberVo) {
		int result=0;
		try {
			result=my.insert("member.create",memberVo );
		}catch(Exception e) {
			System.out.println("에러발생");
		}
		return result;
	}
	//로그인
	public MemberVO login(MemberVO memberVo) {
		return my.selectOne("member.login",memberVo );
	}
	
	
}