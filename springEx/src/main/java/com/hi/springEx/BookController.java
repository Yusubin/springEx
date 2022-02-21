package com.hi.springEx;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller

public class BookController {
	
	
	@RequestMapping("create")	
	public void create(BookVO vo, BookDAO dao) {
		System.out.println("create요청");
		System.out.println(vo);
		dao.create(vo);
	}

	@RequestMapping("del")
	public void del(BookVO vo, BookDAO dao) {
		//dao=this.dao;
		System.out.println("delete요청");
		System.out.println(vo);
		dao.delete(vo);
	}

	@RequestMapping("up")
	public void up(BookVO vo, BookDAO dao) {
		//dao=this.dao;
		System.out.println("update요청");
		System.out.println(vo);
		dao.update(vo);
	}
}