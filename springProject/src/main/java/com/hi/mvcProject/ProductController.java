package com.hi.mvcProject;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("one")
	public void one(ProductVO vo, Model model) {
		ProductVO vo2=dao.readOne(vo);
		model.addAttribute("one", vo2);
	}

	@RequestMapping("list")
	public void list(Model model) {
		List<ProductVO> list=dao.readAll();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("plus")
	public void plus(ProductVO vo, Model model, HttpSession session) {
		//기존에있는 장바구니 세션을 가지고 와서 
		//기본형(값): 정수,실수,문자,논리
		//참조형(주소):객체, 클래스, 배열....
		//변수는 언제생기는가? (RAM에 생기는 저장공간은) 변수의 타입 변수명 --->변수생김. 선언. 
		ArrayList<ProductVO> list = null; //기본형초기화:해당타입의 값으로 초기화. 참조형은 null로. 지역변수는 항상초기화. 
		if(session.getAttribute("basket") != null) {
			//기존에 장바구니에 넣은 목록이 있었고 그것이 세션이 잡혀잇다. 
			//리스트를 만들어주어야함
			//다운캐스팅...강제로 타입변환 
			list=(ArrayList<ProductVO>)session.getAttribute("basket");
			
		}else {
			//한번도 장바구니에 넣은적이없다. (세션이 X)
			 list = new ArrayList<ProductVO>();
		}
		//새로운 물건을 장구니세션목록에 추가아.
		//세션을 새로운 목록으로 업데이트. 
		list.add(vo);
		//session의 값 변수의 타입은 Object로 되어있음. 어떤타입이든 다Object의 상속이므로 모든타입들을 넣을수있다. 
		//String(자식, 아래, 작은)--->Object(큰,위,최상위 부모)
		//업캐스팅, 자동캐스팅==>자동형변환
		session.setAttribute("basket", list);
		model.addAttribute("size", list.size());
	}

}
