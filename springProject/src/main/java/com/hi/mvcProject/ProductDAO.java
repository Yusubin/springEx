package com.hi.mvcProject;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ProductDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public void create(ProductVO productVo) {
			my.insert("product.create",productVo );
	}
	public ProductVO readOne(ProductVO productVo) {
		return my.selectOne("product.one",productVo);
		
	}
	public List<ProductVO> readAll() {
		return my.selectList("product.all");
	}
	public void update(ProductVO productVo) {
		my.update("product.up",productVo );
	}
	public void delete(ProductVO productVo) {
		my.delete("product.del",productVo );
	}
	
}
