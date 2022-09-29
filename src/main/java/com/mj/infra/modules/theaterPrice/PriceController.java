package com.mj.infra.modules.theaterPrice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.common.util.UtilDateTime;

@Controller
@RequestMapping(value="/theaterPrice/")
public class PriceController {

	@Autowired
	PriceServiceImpl service;
	
	public void setSearchAndPaging(PriceVo vo) throws Exception{
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value="list")
	public String priceList(@ModelAttribute("vo") PriceVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Price> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/theater/xdmin/priceList";
	}
	
	@RequestMapping(value="form")
	public String priceForm() throws Exception {
		return "infra/theater/xdmin/priceForm";
	}
	
}
