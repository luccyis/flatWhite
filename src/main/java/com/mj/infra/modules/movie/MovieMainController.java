package com.mj.infra.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value =  "/movie/")
public class MovieMainController {

	@Autowired
	MovieMainServiceImpl service;
	
	@RequestMapping(value = "main")
	public String MovieMain(Model model) throws Exception{
		List<MovieMain> list = service.selectList();
		model.addAttribute("list", list);
		return "infra/movie/user/movieMain";
	}
}
