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
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}

	public void setSerchAndPaging(CodeVo vo) throws Exception{
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception{
		
		System.out.println("vo.getCdSeq(): " + vo.getCdSeq());
		Code result = service.selectOne(vo);
		List<CodeGroup> list = service2.selectList();
		/* model.addAttribute("list", list); */
		model.addAttribute("item", result);
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/code/codeList";
	}

	@RequestMapping(value = "codeUpdt")
	public String code(Code dto, Model model) throws Exception{
		service.update(dto);
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeDele")
	public String code(CodeVo vo) throws Exception{
		int result = service.delete(vo);
		System.out.println("delete result:" + result );
		return "redirect:/code/codeList";
	}
	
	@RequestMapping(value = "codeUete")
	public String code(Code dto) throws Exception{
		int result = service.uelete(dto);
		System.out.println("uelete result: " + result);
		return "redirect:/code/codeList";
	}
}
