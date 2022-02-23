package com.hi.mvcProject;

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
	public String create(MemberVO vo) {
		System.out.println("create요청");
		int result =dao.create(vo);
		if(result==1) {
			return "ok";
		}else {
			return "insert";
		}
		
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:member.jsp";
	}
	

	@RequestMapping("check")
	public String login(MemberVO vo, HttpSession session) throws Exception {
		System.out.println(vo);
		MemberVO vo2=dao.login(vo);
		System.out.println(vo2);
		
		if(vo2 != null) {
			//로그인성공>세션잡기
			
			session.setAttribute("userId", vo2.getId());
			session.setAttribute("userName", vo2.getName());
			return "redirect:member.jsp";
		}else { //로그인실패
			return "check";
		}
	}
	
	

}
