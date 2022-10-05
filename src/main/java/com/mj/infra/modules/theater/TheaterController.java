package com.mj.infra.modules.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mj.infra.common.constants.Constants;
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
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
	
		vo.setParamsPaging(service.selectOneCount(vo));

	}

	@RequestMapping(value="theaterForm")
	public String theaterForm(@ModelAttribute("vo") TheaterVo vo, Model model) throws Exception {
		System.out.println("vo.getTdthSeq(): " + vo.getTdthSeq());
		Theater item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/theater/xdmin/theaterForm";
	}
	
	//insert 부터 
	@SuppressWarnings(value = {"all"})
	@RequestMapping(value = "theaterInst")
	public String theaterInst(TheaterVo vo, Theater dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setTdthSeq(dto.getTdthSeq());
		redirectAttributes.addAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE==1) {
			return "redirect:/theater/theaterForm";
		} else {
			return "redirect:/theater/theaterList";
		}
	}
	
	@RequestMapping(value="theaterUpdt")
	public String theaterUpdt(TheaterVo vo, Theater dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setTdthSeq(dto.getTdthSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE==1) {
			return "redirect:/theater/theaterForm";
		} else {
			return "redirect:/theater/theaterList";
		}
	}
	
	@RequestMapping(value="theaterDele")
	public String theaterUpdt(TheaterVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/theater/theaterList";
	}
	
	@RequestMapping(value="theaterUele")
	public String theaterUele(Theater dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: "+ result);
		return "redirect:/theater/theaterList";
	}
	
	
	

	
}
