package com.mj.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception{
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getCgSeq(): " + vo.getCgSeq());
		CodeGroup result = service.selectOne(vo);
		model.addAttribute("item", result);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}

//	@RequestMapping(value = "codeGroupView")
//	public String codeGroupView(CodeGroupVo vo, Model model) throws Exception{
//		CodeGroup result = service.selectOne(vo);
//		model.addAttribute("item", result);
//		return "infra/codegroup/xdmin/codeGroupView"; 
//	}
//	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto, Model model) throws Exception {
		service.update(dto);
		model.addAttribute("item", model);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(CodeGroupVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroup dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: "+ result);
		return "redirect:/codeGroup/codeGroupList";
		
	}
	

	

}
