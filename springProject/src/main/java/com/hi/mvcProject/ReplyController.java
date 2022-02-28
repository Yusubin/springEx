package com.hi.mvcProject;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {
	@Autowired
	ReplyDAO dao;
	
	@RequestMapping("replyList")
	public void list(BbsVO vo, Model model) {
		List<ReplyVO> list=dao.list(vo);
		model.addAttribute("list", list);
	}
	@RequestMapping("replyDelete")
	public void del(ReplyVO vo, Model model) {
		System.out.println("delete요청");
		int result =dao.delete(vo);
		model.addAttribute("result", result);
		
	}
	
	@RequestMapping("replyInsert")
	public void create(ReplyVO vo,Model model) {
		int result=dao.create(vo);
		if(result==1){
			model.addAttribute("one", vo);
		}
		
	}
}
