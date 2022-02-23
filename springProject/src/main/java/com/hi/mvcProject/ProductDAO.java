package com.hi.mvcProject;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductDAO {
	@Autowired
	SqlSessionTemplate my; //의존성 주입(DI) 어떤 어노텐션쓰셧어요 저는 오토 와이어드요
	

	public ProductVO readOne(ProductVO productVo) {
		return my.selectOne("product.one",productVo);
		
	}
	public List<ProductVO> readAll() {
		return my.selectList("product.list");
	}
	
	
}
