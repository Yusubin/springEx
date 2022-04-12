package com.hi.test;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.hi.test.MemberVO;
@Component
public class MemberDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public void create(MemberVO memberVo) {
			my.insert("member.create",memberVo);
	}
	
}