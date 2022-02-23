package com.hi.springEx;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class BbsDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public int create (BbsVO vo) {
		return my.insert("bbs.create",vo); //namespace.id, 가방
	}
	
	public BbsVO readOne (BbsVO vo) {
		 return my.selectOne("bbs.one",vo); //namespace.id, 가방
	}
	public List<BbsVO> all() {
		return my.selectList("bbs.list");
	}
	
	
	
	
}
