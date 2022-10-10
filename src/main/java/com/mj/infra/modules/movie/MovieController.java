package com.mj.infra.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mj.infra.common.constants.Constants;
import com.mj.infra.common.util.UtilDateTime;
import com.mj.infra.modules.timetable.Timetable;
import com.mj.infra.modules.timetable.TimetableVo;

@Controller
@RequestMapping(value="/movie/")
public class MovieController {
	
	@Autowired
	MovieServiceImpl service;
	
	public void setSearchAndPaging(MovieVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value="main")
	public String MovieMain(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception{
		List<Movie> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/movie/user/movieMain";
	}

	@RequestMapping(value="view")
	public String MovieView(Movie dto, Model model) throws Exception {
		
		dto.setPseq("4");
		Movie item = service.selectMovieImage(dto);
		model.addAttribute("item", item);
		
		
		return "infra/movie/user/movieView";
	}
	
	@RequestMapping(value="movieList")
	public String movieList(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception{
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Movie> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/movie/xdmin/movieList";
	}
	
	@RequestMapping(value="movieForm")
	public String movieForm(@ModelAttribute("vo") MovieVo vo, Model model) throws Exception{
		
		System.out.println("vo.getCgSeq(): " + vo.getTdmvSeq());
		Movie item =service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/movie/xdmin/movieForm";
	}
	
	@RequestMapping(value="movieUpdt")
	public String movieUpdt(Movie dto, MovieVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setTdmvSeq(dto.getTdmvSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/movie/movieForm";
		} else {
			return "redirect:/movie/movieList";
		}
		
	}
	
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value="movieInst")
	public String movieInst(MovieVo vo, Movie dto, RedirectAttributes redirectAttributes) throws Exception {
		
		System.out.println(dto.getMultipartFile().length);
		
		service.insert(dto);
		vo.setTdmvSeq(dto.getTdmvAge());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE ==1) {
			return "infra/movie/xdmin/movieForm";
		} else {
			return "infra/movie/xdmin/movieList";
		}
	
	}
	
	@RequestMapping(value="movieDele")
	public String movieDele(MovieVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/movie/movieList";
	}
	
	@RequestMapping(value="movieUele")
	public String movieUele(Movie dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: " + result);
		return "redirect:/movie/movieList";
	}
	
	//링크 바꿔야 됨.
	@RequestMapping(value="timeTable")
	public String timeTable(Model model) throws Exception {
			List<Movie> list = service.selectList();
			model.addAttribute("list", list);
		
		return "infra/booking/user/timeTable";
	}
	
	
	
	
	
	@RequestMapping(value="postList")
	public String MoviePostList() throws Exception{
		return "infra/movie/user/moviePostList";
	}
	
	@RequestMapping(value="postForm")
	public String postForm() throws Exception{
		return "infra/movie/user/postForm";
	}
	
	@RequestMapping(value="postListxdmin")
	public String postListxdmin() throws Exception{
		return "infra/movie/xdmin/postListxdmin";
	}
	
	
	
	
	
	
	
}
