package com.hi.mvcProject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class ServiceController {

	@Autowired
	ServiceDAO dao;
	
	@RequestMapping("insert")
	public void create() {
		
	}
}
