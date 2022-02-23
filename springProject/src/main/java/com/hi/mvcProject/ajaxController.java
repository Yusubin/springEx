package com.hi.mvcProject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //1) 컨트롤러로 등록 2) 싱글톤으로 객체생성(주소가생김 new를 한번밖에안함) 클랙스가 하는 역할에 따라 어노텐션을 달아줌. 
public class ajaxController {
	

	@RequestMapping("comment")
	public void comment(String comment,  Model model) {
		System.out.println("ajax로 받은데이터"+comment);
		model.addAttribute("comment", comment);
	
		
	}
}
