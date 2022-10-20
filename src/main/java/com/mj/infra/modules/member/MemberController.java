package com.mj.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mj.infra.common.constants.Constants;
import com.mj.infra.common.util.UtilDateTime;

@Controller
@RequestMapping(value = "/member/")
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	public void setSearchAndPaging(MemberVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	@RequestMapping(value = "memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception{
		setSearchAndPaging(vo);
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		System.out.println("vo.getShDelNy(): " + vo.getShDelNy());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value="memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		System.out.println("vo.getIfmmSeq(): " + vo.getIfmmSeq());
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/member/xdmin/memberForm";
	}
	
	
	@SuppressWarnings(value= {"all"})
	@RequestMapping(value="memberInst")
	public String MemberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE ==2) {
			return "redirect:/member/memberForm";
		} else {
			return "redirect:/member/memberList";
		}
	}

	@RequestMapping(value="memberUpdt")
	public String MemberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setIfmmSeq(dto.getIfmmSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if(Constants.INSERT_AFTER_TYPE ==1) {
			return "redirect:/member/memberForm";
		} else {
			return "redirect:/member/memberList";
		}
	}
	
	@RequestMapping(value="memberDele")
	public String MemberDele(MemberVo vo) throws Exception {
		int result = service.delete(vo);
		System.out.println("delete result: " + result);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value="memberUele")
	public String MemberUele(Member dto) throws Exception {
		int result = service.uelete(dto);
		System.out.println("uelete result: " + result);
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value="login")
	public String login() throws Exception {
		return "infra/member/user/login";
	}
	
	@ResponseBody
	@RequestMapping(value = "loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.selectOneLogin(dto);

			if (rtMember2 != null) {
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getIfmmSeq());
				httpSession.setAttribute("sessId", rtMember2.getIfmmId());
				httpSession.setAttribute("sessName", rtMember2.getIfmmName());
				httpSession.setAttribute("sessGrade", rtMember2.getIfmmGrade());
				httpSession.setAttribute("sessPhone", rtMember2.getIfmmPhone());

				System.out.println(httpSession.getAttribute("sessName"));
				returnMap.put("rt", "success");
				}
			} else {
				dto.setIfmmSeq(rtMember.getIfmmSeq());
				returnMap.put("rt", "fail");
				
			}
		
		return returnMap;
		}
	

	@ResponseBody
	@RequestMapping(value = "logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

	
	//user
	
	@ResponseBody
	@RequestMapping(value="checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectOneIdCheck(dto);
		
		if(result>0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	
	@RequestMapping(value="joinAuth")
	public String joinAuth() throws Exception {
		return "infra/member/user/joinAuth";
	}
	
	@RequestMapping(value="joinForm")
	public String joinForm() throws Exception {
		return "infra/member/user/joinForm";
	}
	
	
	@RequestMapping(value="joinResult")
	public String joinResult(Member dto) throws Exception {
		service.insert(dto);
		return "infra/member/user/joinResult";
	}

}
