package com.mj.infra.modules.theaterPlex;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.common.util.UtilDateTime;

@Controller
@RequestMapping(value="/plex/")
public class PlexController {
	
	@Autowired
	PlexServiceImpl service;
	
	public void setSearchAndPaging(PlexVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value="list")
	public String plexList(@ModelAttribute("vo") PlexVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Plex> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/theater/xdmin/plexList";
	}
	
	@RequestMapping(value="form")
	public String plexForm() throws Exception {
		return "infra/theater/xdmin/plexForm";
	}
	
	

}
