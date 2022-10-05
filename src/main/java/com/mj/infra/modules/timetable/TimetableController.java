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

@Controller
@RequestMapping(value="/timetable/")
public class TimetableController {
	
	@Autowired
	TimetableServiceImpl service;
	
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
	
	//링크 바꿔야 됨.
	@RequestMapping(value="EEE")
	public String timeTable(@ModelAttribute("vo") TimetableVo vo, Model model) throws Exception {
			List<Timetable> list = service.selectList(vo);
			model.addAttribute("list", list);
		
		return "infra/booking/user/timeTable";
	}
	
	@RequestMapping(value="seatSelect")
	public String seatSelect() throws Exception {
		return "infra/booking/user/seatSelect";
	}


	//영화예매 페이지
	@ResponseBody
	@RequestMapping(value="selectTheater")
	public Map<String, Object> selectTheater(TimetableVo vo) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		List<Timetable> list = service.selectListFromMovie(vo);
		System.out.println("==========" + list);
		return result;
	}
}
