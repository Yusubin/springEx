package com.hi.springEx;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StockController {
	@Autowired
	StockDAO dao;
	
	@Autowired
	StockService service;

	@RequestMapping("create.do")
	public void insert(StockVO vo) {
		dao.insert(vo);
	}
	
	
	//입력한 코드(String)를 받아서:Controller
	//크롤링: Service
	//한후 DB에넣음 :dao
	@RequestMapping("stock.do")
	public String insert2(String code) {
		service.crawl(code);
		return "redirect:finance.jsp";
	}
}
