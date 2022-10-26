package com.mj.infra.modules.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.modules.member.MemberServiceImpl;
import com.mj.infra.modules.member.MemberVo;
import com.mj.infra.modules.movie.Movie;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.movie.MovieVo;
import com.mj.infra.modules.theater.TheaterServiceImpl;
import com.mj.infra.modules.theater.TheaterVo;

@Controller
public class HomeController {
	
	@Autowired
	MovieServiceImpl service;
	
	@Autowired
	MemberServiceImpl memberService;
	
	@Autowired
	TheaterServiceImpl theaterService;
	
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
	public String xdminHome(MemberVo mm, MovieVo mv, TheaterVo th, Model model) throws Exception {
		int memberCount = memberService.selectOneCount(mm);
		model.addAttribute("memberCount", memberCount);
		
		int theaterCount = theaterService.selectOneCount(th);
		model.addAttribute("theaterCount", theaterCount);
		
		List<Movie> list = service.selectListMain(mv);
		model.addAttribute("list", list);
		
		
		return "infra/home/xdmin/home";
	}

	
}
