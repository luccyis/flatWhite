package com.mj.infra.modules.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/movie/")
public class MovieController {
	
	@Autowired
	MovieMainServiceImpl service;
	
	@RequestMapping(value="main")
	public String MovieMain() throws Exception{
		return "infr/movie/user/movieMain";
	}

	@RequestMapping(value="view")
	public String MovieView() throws Exception {
		return "infr/movie/user/movieView";
	}
	
	@RequestMapping(value="postList")
	public String MoviePostList() throws Exception{
		return "infr/movie/user/moviePostList";
	}
}
