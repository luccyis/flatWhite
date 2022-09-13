package com.mj.infra.modules.movie;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/movie/")
public class MovieDetailController {
	
	@RequestMapping(value="detail")
	public static String MovieDetail(Model model) throws Exception{
		return "infra/movie/user/movieDetail";
	}

}
