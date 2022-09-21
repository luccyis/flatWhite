package com.mj.infra.modules.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.common.util.UtilDateTime;

@Controller
@RequestMapping(value ="/theater/")
public class TheaterController {
	
	@Autowired
	TheaterServiceImpl service;
	
	@RequestMapping(value="theaterList")
	public String theaterList(@ModelAttribute("vo") TheaterVo vo, Model model) throws Exception {
		
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Theater> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/theater/xdmin/theaterList";
	}
	
	public void setSearchAndPaging(TheaterVo vo) throws Exception {
//		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
//		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
//		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	
		vo.setParamsPaging(service.selectOneCount(vo));

	}

	@RequestMapping(value="theaterForm")
	public String theaterForm(@ModelAttribute("vo") TheaterVo vo, Model model) throws Exception {
		System.out.println("vo.getCgSeq(): " + vo.getTdthSeq());
		Theater item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/theater/xdmin/theaterForm";
	}
	
	//insert 부터 
	
	@RequestMapping(value="plexList")
	public String plexList() throws Exception {
		return "infra/theater/xdmin/plexList";
	}
	
	@RequestMapping(value="plexForm")
	public String plexForm() throws Exception {
		return "infra/theater/xdmin/plexForm";
	}
	
	@RequestMapping(value="priceList")
	public String priceList() throws Exception {
		return "infra/theater/xdmin/priceList";
	}
	
	@RequestMapping(value="priceForm")
	public String priceForm() throws Exception {
		return "infra/theater/xdmin/priceForm";
	}
	
	
}
