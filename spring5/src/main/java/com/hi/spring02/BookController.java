package com.hi.spring02;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class BookController {
	
	@Autowired
	BookVAO dao;
	
	@RequestMapping("create")
	public void insert(BookVO vo ,BookVAO bao) {
		dao.create(vo);
		
		
	}
	@RequestMapping ("all2")
	public void all (Model model) {
		List<BookVO> list= dao.all();
		model.addAttribute("list",list);
	}
	
	@RequestMapping ("one2")
	public void one (BookVO vo, Model model) {
		BookVO one = dao.read(vo);
		model.addAttribute("one",one);
		
	}
	@RequestMapping("del2")
	public void del(BookVO vo) {
		System.out.println("delete요청");
		dao.delete(vo);
	}

	@RequestMapping("up2")
	public String up(BookVO vo) {
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
	@RequestMapping("ajax1")
	public void ajax1(String phone, Model model) {
		System.out.println("ajax1호출");
		System.out.println(phone);
	
		String no = "";
		String pre = phone.substring(0,3);
		System.out.println(pre);
		
		if(pre.equals("010")) { no += "111"; }
		else if(pre.equals("011")) { no += "222"; }
		else { no += "333"; }
		//010-111    011-222      나머지-033
//		
		Random r= new Random();
		int no2=r.nextInt(900)+100;
		no+=no2;
		
		System.out.println("전송할인증번호"+no);
		model.addAttribute("no", no);
		
	}
	
	

	@RequestMapping("ajax2")
	public void ajax2(double money, String payment,Model model) {
		System.out.println("ajax1호출");
		System.out.println(money + "/" + payment);
		
		System.out.println(money);
		
		if(payment.equals("1")) {
			money *= 0.7; 
			System.out.println(money);
			}
		else if(payment.equals("2")) {
			money *= 0.9;
			System.out.println(money);
			}
		else {
			money = money;
			System.out.println(money);
			}
		//010-111    011-222      나머지-033
		
		System.out.println("가격"+money);
		model.addAttribute("m",(int)money);
		
	}

}
