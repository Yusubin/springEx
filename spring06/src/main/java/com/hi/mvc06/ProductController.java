package com.hi.mvc06;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("insert")
	public void create(ProductVO vo) {
		System.out.println("create요청");
		dao.create(vo);
	}
	
	@RequestMapping("del")
	public void del(ProductVO vo) {
		System.out.println("delete요청");
		dao.delete(vo);
	}

	@RequestMapping("up")
	public void up(ProductVO vo) {
		dao.update(vo);
		System.out.println("update요청");
	}
	
	@RequestMapping("up2")
	public void preup(ProductVO vo, Model model) {
		ProductVO one = dao.readOne(vo);
		model.addAttribute("one",one);
		System.out.println("update요청");
	}
	
	@RequestMapping ("all")
	public void all (Model model) {
		List<ProductVO> list= dao.readAll();
		model.addAttribute("list",list);
	}
	
	@RequestMapping ("one")
	public void one (ProductVO vo, Model model) {
		ProductVO one = dao.readOne(vo);
		model.addAttribute("one",one);
		
	}
	
}
