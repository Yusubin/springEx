package com.hi.spring02;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class BookController {
	@RequestMapping("insert.do")
	public void insert(BookVO vo ,BookVAO bao) {
		bao.create(vo);
		
		
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
