package com.hi.mvcProject;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ReplyDAO {
	@Autowired
	SqlSessionTemplate my; //의존성 주입(DI) 어떤 어노텐션쓰셧어요 저는 오토 와이어드요
	public List<ReplyVO> list(BbsVO vo) {
		return my.selectList("reply.list", vo);
	}
	
	public int delete (ReplyVO vo) {
		return my.delete("reply.del",vo); //namespace.id, 가방
	}
	
	public int create (ReplyVO vo) {
		return my.insert("reply.create",vo); //namespace.id, 가방
	}

	
}
