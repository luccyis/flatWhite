package com.mj.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.modules.movie.Movie;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.movie.MovieVo;

@Controller
public class HomeController {
	
	@Autowired
	MovieServiceImpl service;
	
	@RequestMapping(value="/")
	public String home() throws Exception{
		return "infra/home/home";
	}
	
	@RequestMapping(value = "userHome")
	public String homeList(@ModelAttribute("vo") MovieVo vo, Movie dto, Model model) throws Exception{
		List<Movie> list = service.selectListMain(vo);
		model.addAttribute("list", list);
		return "infra/home/user/home";
	}
	
	@RequestMapping(value="xdminHome")
	public String xdminHome() throws Exception {
		return "infra/home/xdmin/home";
	}

	
}
