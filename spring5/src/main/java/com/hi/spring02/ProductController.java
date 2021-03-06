package com.hi.spring02;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	
//	@RequestMapping("insert")
	public void create(ProductVO vo) {
		System.out.println("create요청");
		dao.create(vo);
	}
	
//	@RequestMapping("delete")
	public void del(ProductVO vo) {
		System.out.println("delete요청");
		dao.delete(vo);
	}

//	@RequestMapping("update")
	public void up(ProductVO vo) {
		System.out.println("update요청");
		dao.update(vo);
	}
	
}
