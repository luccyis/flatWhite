package com.mj.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/home/", method= RequestMethod.GET)
public class HomeController {
	
	@Autowired
	HomeServiceImpl service;
	
	@RequestMapping(value = "main")
	public String HomeList(Model model) throws Exception{
		List<Home> list = service.selectList();
		model.addAttribute("list", list);
		return "infra/home/user/home";
	}

	
}
