package com.hi.springEx;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	@Autowired
	BbsDAO dao;
	@RequestMapping("write")
	public String create(BbsVO vo) {
		int result =dao.create(vo);
		if(result==1) {
			return "write";
		}else {
			return "insert";
		}
	}
	
	@RequestMapping("bList")
	public void list (BbsVO vo,Model model) {
		List<BbsVO> list=dao.all();
		model.addAttribute("list", list);
	}
	
	
	@RequestMapping("bOne")
	public void one (BbsVO vo,Model model) {
		BbsVO vo2= dao.readOne(vo);
		model.addAttribute("one", vo2);
	}

}
