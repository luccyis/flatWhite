package com.mj.infra.modules.codegroup;

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
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception{
		
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	public void setSearchAndPaging(CodeGroupVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));

	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {
		
		System.out.println("vo.getCgSeq(): " + vo.getCgSeq());
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value = "codeGroupInst")
	public String codeGroupInst(CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes) throws Exception {

		vo.setCgSeq(dto.getCgSeq());
		service.insert(dto);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE ==1) {
			System.out.println("폼으로");
			return "redirect:/codeGroup/codeGroupForm";
		} else {
			System.out.println("리스트로");
			return "redirect:/codeGroup/codeGroupList";
		}
		
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(@ModelAttribute("vo") CodeGroupVo vo, CodeGroup dto, RedirectAttributes redirectAttributes)  throws Exception {
		
		service.update(dto);
		
		vo.setCgSeq(dto.getCgSeq());
		
		redirectAttributes.addFlashAttribute("vo", vo);

//		if(Constants.UPDATE_AFTER_TYPE ==1) {
//			System.out.println("업대이트 에서 폼");
//			return "redirect:/codeGroup/codeGroupForm";
//		} else {
//			System.out.println("업대이트 에서 리스트");
//			return "redirect:/codeGroup/codeGroupList";
//		}
		return "redirect:/codeGroup/codeGroupForm";
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
