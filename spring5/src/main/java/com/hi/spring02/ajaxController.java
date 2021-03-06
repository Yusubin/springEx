package com.hi.spring02;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //1) 컨트롤러로 등록 2) 싱글톤으로 객체생성(주소가생김 new를 한번밖에안함) 클랙스가 하는 역할에 따라 어노텐션을 달아줌. 
public class ajaxController {
	
	@RequestMapping("movie")
	public void movie(String title, int price, Model model) {
		System.out.println("ajax로 받은데이터"+title+" "+price);
		double price2=price*0.8;
		model.addAttribute("title", title);
		model.addAttribute("price2",(int)price2);
		
	}
	
	
	@RequestMapping("user")
	public void user(String id,  Model model) {
		System.out.println("ajax로 받은데이터"+id);
		model.addAttribute("id", id);
		//dao에 userid를 주면서 이미 있는지 체크 
		//select*from member where id='user'
		String[] list= {"apple","melon","summer"};
		String result="사용가능한 아이디";
		for(String s:list) {
			if(s.equals(id)) {
				result="사용불가능한 id";
			}
			result="사용가능한 id";
		}
		
		model.addAttribute("result", result);
	}
	@RequestMapping("comment")
	public void comment(String comment,  Model model) {
		System.out.println("ajax로 받은데이터"+comment);
		model.addAttribute("comment", comment);
	
		
	}
}
