package com.mj.infra.modules.find;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.infra.modules.member.Member;
import com.mj.infra.modules.member.MemberServiceImpl;

@Controller
@RequestMapping(value="/find/")
public class FindController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="findId")
	public String findId() throws Exception {
		return "infra/find/user/findId";
	}
	
	@ResponseBody
	@RequestMapping(value="findIdProc")
	public Map<String, Object> findId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member id = service.findId(dto);
		
		if(id != null) {
			returnMap.put("rt", "success");
			returnMap.put("id", id);
		}else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	@RequestMapping(value="findPw")
	public String findPw() throws Exception {
		return "infra/find/user/findPw";
	}
	
	@ResponseBody
	@RequestMapping(value="findPwProc") 
	public Map<String, Object> findPw(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int pw = service.findPw(dto);
		
		if(pw == 1) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
//	@ResponseBody
//	@RequestMapping(value="changePwd")
//	public Map<String, Object> changePwd(Member dto) throws Exception {
//		Map<String, Object> returnMap = new HashMap<String, Object>();
//		
//		int pw = service.findPw(dto);
//		
//		if (pw == 1) {
//			returnMap.put("rt", "success");
//			service.changePwd(dto);
//		} else {
//			returnMap.put("rt", "fail");
//		}
//		return returnMap;
//	}
	
	@RequestMapping(value="changePwd")
	public String changePwd(Member dto) throws Exception {
		
		return "infra/find/user/findPwResult";
	}
	
	@RequestMapping(value="pwdInst")
	public String pwdInst(Member dto) throws Exception {
		
		return "redirect:/";
	}
	


}
