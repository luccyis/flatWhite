package com.mj.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.modules.codegroup.CodeGroup;
import com.mj.infra.modules.codegroup.CodeGroupServiceImpl;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	
	@Autowired
	CodeServiceImpl service;
	
	@Autowired
	CodeGroupServiceImpl service2;
	
	
	@RequestMapping(value = "codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception{
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model) throws Exception{
		List<CodeGroup> list1 = service2.selectList();
		model.addAttribute("list1", list1);
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";
	}

}
