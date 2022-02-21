package com.hi.spring02;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MemberController {
//	MemberDAO dao =new MemberDAO();
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public void create(MemberVO vo) {
		System.out.println("create요청");
		dao.create(vo);
	}

	@RequestMapping("del")
	public void del(MemberVO vo) {
		System.out.println("delete요청");
		dao.delete(vo);
	}

	@RequestMapping("up")
	public String up(MemberVO vo) {
		//dao=this.dao;
		System.out.println("update요청");
		System.out.println(vo);
		int result=dao.update(vo);
		
		if(result==0) {
			//return "error";//views아래의 파일을 호출하는 경우
			return "redirect:error.jsp";//Webapp아래의 파일을 호출하는 경우
		}else {
			return "up";
		}
	}
	
	@RequestMapping ("all")
	public void all (Model model) {
		List<MemberVO> list= dao.readAll();
		model.addAttribute("list",list);
	}
	
	@RequestMapping ("one")
	public void one (MemberVO vo, Model model) {
		MemberVO one = dao.readOne(vo);
		model.addAttribute("one",one);
		
	}

}
