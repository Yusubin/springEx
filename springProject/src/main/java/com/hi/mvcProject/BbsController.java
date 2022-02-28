package com.hi.mvcProject;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;
	
	@RequestMapping("write")
	public String create(BbsVO vo, HttpSession session, Model model) {
		int result =dao.create(vo);
		BbsVO vo2 = dao.createId();
		if(result==1) {
			model.addAttribute("id", vo2.getId());
			return "writeBoard";

		}else {
			return "er";
		}
	}
	
	@RequestMapping("boardList")
	public void list (Model model) {
		List<BbsVO> list=dao.all();
		model.addAttribute("list", list);
	}
	
	
	
	@RequestMapping("boardOne")
	public void one (BbsVO vo, Model model) {
		BbsVO vo2= dao.readOne(vo);
		model.addAttribute("one", vo2);
		
		List<ReplyVO>list=dao2.list(vo);
		model.addAttribute("list", list);
	}
	

	
	
	@RequestMapping("del")
	public void del(BbsVO  vo,Model model) {
		System.out.println("delete요청");
		int result =dao.delete(vo);
		model.addAttribute("result", result);
		
	}

	@RequestMapping("up")
	public String up(BbsVO vo) {
		int result = dao.update(vo);
		System.out.println("update요청");
		if(result==1) {return "up";}
		else {return "no";}
	}
	
	@RequestMapping("up2")
	public void preup(BbsVO  vo, Model model) {
		BbsVO one = dao.readOne(vo);
		model.addAttribute("one",one);
		System.out.println("update요청_");
		
	}
	

}
