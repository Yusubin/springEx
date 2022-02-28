package com.hi.springEx;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Component
public class StockDAO {
	@Autowired
	SqlSessionTemplate my;
	
	
	public void insert(StockVO vo) {
		my.insert("stock.create", vo);
	}
}
