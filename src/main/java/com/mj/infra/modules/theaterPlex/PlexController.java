package com.mj.infra.modules.theaterPlex;

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
@RequestMapping(value="/theaterPlex/")
public class PlexController {
	
	@Autowired
	PlexServiceImpl service;
	
	public void setSearchAndPaging(PlexVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value="plexList")
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
	
	@RequestMapping(value="plexForm")
	public String plexForm(@ModelAttribute("vo") PlexVo vo, Model model) throws Exception {
		System.out.println("vo.getTdpxSeq(): " + vo.getTdpxSeq());
		
		Plex item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		List<Plex> list = service.selectTdthList();
		model.addAttribute("list", list);
		
		return "infra/theater/xdmin/plexForm";
	}
	
	@SuppressWarnings(value={"all"})
	@RequestMapping(value="plexInst")
	public String plexInst(PlexVo vo, Plex dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setTdpxSeq(dto.getTdpxSeq());
		redirectAttributes.addAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE==1) {
			return "redirect:/theaterPlex/plexForm";
		} else {
			return "redirect:/theaterPlex/plexList";
		}
	}
	
	@RequestMapping(value="plexUpdt")
	public String plexUpdt(PlexVo vo, Plex dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setTdpxSeq(dto.getTdpxSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		if(Constants.INSERT_AFTER_TYPE==1) {
			return "redirect:/theaterPlex/plexForm";
		} else {
			return "redirect:/theaterPlex/plexList";
		}
	}
	
	@RequestMapping(value="plexDele")
	public String plexDele(PlexVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/theaterPlex/plexList";
	}
	
	@RequestMapping(value="plexUele")
	public String plexUele(Plex dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: " + result);
		return "redirect:/theaterPlex/plexList";
	}
	

}
