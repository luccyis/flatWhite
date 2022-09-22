package com.mj.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.modules.codegroup.CodeGroup;
import com.mj.infra.modules.codegroup.CodeGroupServiceImpl;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "memberList")
	public String memberList(Model model) throws Exception{
		List<Member> list = service.selectList();
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value="memberForm")
	public String memberForm() throws Exception {
		return "infra/member/xdmin/memberForm";
	}
	
	//user
	
	@RequestMapping(value="joinAuth")
	public String joinAuth() throws Exception {
		return "infra/member/user/joinAuth";
	}
	
	@RequestMapping(value="joinForm")
	public String joinForm() throws Exception {
		return "infra/member/user/joinForm";
	}
	
	@RequestMapping(value="joinResult")
	public String joinResult() throws Exception {
		return "infra/member/user/joinResult";
	}

}
