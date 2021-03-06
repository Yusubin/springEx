package com.hi.spring02;

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
	
	public void create(MemberVO memberVo) {
			my.insert("member.create",memberVo );
	}
	
	public MemberVO login(MemberVO memberVo) {
		return my.selectOne("member.login",memberVo );
	}
	public MemberVO readOne(MemberVO memberVo) {
		return my.selectOne("member.one",memberVo);
		
	}
	public List<MemberVO> readAll() {
		return my.selectList("member.all");
	}
	public int update(MemberVO memberVo) {
		return my.update("member.up",memberVo );
	}
	public int delete(MemberVO memberVo) {
		return my.delete("member.del",memberVo );
	}
	
}