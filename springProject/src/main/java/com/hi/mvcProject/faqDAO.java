package com.hi.mvcProject;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class faqDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public void create (ServiceVO vo) {

	}
	
	public ServiceVO readOne (ServiceVO vo) {

	}
	public List<ServiceVO> all() {

	}
	
	public void update (ServiceVO vo) {

	}
	
	public void delete (ServiceVO vo) {
		
	}
}
