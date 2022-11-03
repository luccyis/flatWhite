package com.mj.infra.modules.timetable;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.infra.common.util.UtilDateTime;
import com.mj.infra.modules.booking.Booking;
import com.mj.infra.modules.movie.Movie;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.movie.MovieVo;

@Controller
@RequestMapping(value="/timetable/")
public class TimetableController {
	
	@Autowired
	TimetableServiceImpl service;
	@Autowired
	MovieServiceImpl service2;
	
	public void setSearchAndPaging(TimetableVo vo) throws Exception{
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value="timetableList")
	public String timetableList(@ModelAttribute("vo") TimetableVo vo, Model model) throws Exception{
		setSearchAndPaging(vo);
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Timetable> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/booking/xdmin/timeTableList";
	}
	
	@RequestMapping(value="timetableForm")
	public String timetableList() throws Exception {
		return  "infra/booking/xdmin/timeTableForm";
	}
	
	//영화예매 페이지 - 영화 목록 
	@RequestMapping(value="choiceMovie")
	public String timeTable(Model model, MovieVo vo) throws Exception {
		List<Movie> list = service2.selectListChoiceMovie(vo);
		model.addAttribute("list", list);
		
		return "infra/booking/user/timetable";
	}
	
	//영화예매 페이지 - 극장 선택
	@ResponseBody
	@RequestMapping(value="selectTheater")
	public Map<String, Object> selectTheater(TimetableVo vo) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		
		List<Timetable> list = service.selectListTimeFromMovie(vo);
		if(list != null) {
			result.put("list", list);
			result.put("rt", "success");
		} else {
			result.put("rt", "false");
		}
		return result;
	}
	
	//영화예매 페이지 - 타임선택
	@ResponseBody
	@RequestMapping(value="selectTime")
	public Map<String, Object> selectTime(TimetableVo vo) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>();
		
		List<Timetable> list = service.selectListTime(vo);
		if(list != null) {
			result.put("list", list);
			result.put("rt", "success");
		} else {
			result.put("rt", "false");
		}
		return result;
	}

	//영화예매 페이지 - 좌석 선택
	@RequestMapping(value="seatSelect")
	public String seatSelect(TimetableVo vo, Model model, Movie dto, @ModelAttribute("dtoBk") Booking dtoBk) throws Exception {
		
		Timetable item = service.selectOneChoiceSeat(vo);
		model.addAttribute("item", item);
		
		List<Timetable> list = service.selectListPrice(vo);
		model.addAttribute("list", list);
		
		dto.setPseq(vo.getTdmvSeq());
		Movie imageItem = service2.selectMovieImage(dto);
		model.addAttribute("imageItem", imageItem);
		
		return "infra/booking/user/seatSelect";
	}
	

}
