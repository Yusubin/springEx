package com.hi.mvc02;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class MemberController {
//	MemberDAO dao =new MemberDAO();
	
	@RequestMapping("create")
	public void create(MemberVO vo, MemberDAO dao) {
		System.out.println("create요청");
//		1.입력한값 가져오기
		System.out.println(vo);
//		2. vo 만드러서 넣기
//		3.dao한테 vo주면서 create요청

		dao.create(vo);
	}

	@RequestMapping("del")
	public void del(MemberVO vo,MemberDAO dao) {
		//dao=this.dao;
		System.out.println("delete요청");
		System.out.println(vo);
		dao.delete(vo);
	}

	@RequestMapping("up")
	public void up(MemberVO vo, MemberDAO dao) {
		//dao=this.dao;
		System.out.println("update요청");
		System.out.println(vo);
		dao.update(vo);
	}
	
	@RequestMapping("check.hi")
	public void login(MemberVO vo,MemberDAO dao, HttpSession session) {
	//	dao=this.dao;
		System.out.println("login요청");
		System.out.println(vo);
		boolean result=dao.login(vo);
		
		if (result) {
			//세션을 잡아두어라....
			session.setAttribute("user", vo.getId());
			session.setAttribute("uname", "홍길동");
			//name을 세션으로 잡아서 브라우저 2ㅜ것에서
			//(ex) id가 apple인 ㅇㅇ님 환영합니다.,
		}
	}

}
