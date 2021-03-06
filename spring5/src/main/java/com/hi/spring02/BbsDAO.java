package com.hi.spring02;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class BbsDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public int create (BbsVO vo) {
		return my.insert("bbs.create",vo); //namespace.id, 가방
	}
	public int update (BbsVO vo) {
		return my.update("bbs.up",vo); //namespace.id, 가방
	}
	
	public int delete (BbsVO vo) {
		return my.delete("bbs.del",vo); //namespace.id, 가방
	}
	
	public BbsVO readOne (BbsVO vo) {
		 return my.selectOne("bbs.one",vo); //namespace.id, 가방
	}
	public List<BbsVO> all() {
		return my.selectList("bbs.all");
	}
	
	
	
	
}
