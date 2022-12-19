package com.mj.infra.modules.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mj.infra.modules.member.Member;
import com.mj.infra.modules.member.MemberServiceImpl;
import com.mj.infra.modules.member.MemberVo;
import com.mj.infra.modules.theater.Theater;
import com.mj.infra.modules.theater.TheaterServiceImpl;
import com.mj.infra.modules.theater.TheaterVo;

@Controller
@RequestMapping(value = "/mypage/")
public class MypageController {
	
	@Autowired
	MypageServiceImpl service;
	
	@Autowired
	MemberServiceImpl memberService;
	
	@Autowired
	TheaterServiceImpl theaterService;
	
	@RequestMapping(value="main")
	public String mypageMain(HttpSession httpSession, MypageVo vo, Model model) throws Exception {
		
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		List<Mypage> favTh = service.selectListFavoritTheater(vo);
		model.addAttribute("favTh", favTh);
		
		List<Mypage> history = service.selectListMypageHistory(vo);
		model.addAttribute("history", history);
		
		return "infra/mypage/user/mypageMain";
	}
	
	@RequestMapping(value="mod")
	public String mypageMod(HttpSession httpSession, MemberVo vo, Model model) throws Exception {
		
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Member item = memberService.selectOne(vo);
		model.addAttribute("item", item);
	
		return "infra/mypage/user/mypageMod";
	}
	
	//회원탈퇴 
	@RequestMapping(value="userUele")
	public String userUele(Member dto, HttpSession httpSession) throws Exception {
		int result = memberService.uelete(dto);
		httpSession.invalidate();
		
		return "redirect:/userhome";
	}
	
	
	@RequestMapping(value="updt")
	public String mypageUpdt(Mypage dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.updateMypage(dto);
		redirectAttributes.addFlashAttribute("item", dto);
		return "redirect:/mypage/mod";
	}
	
	
	@RequestMapping(value="additionalInfo")
	public String additionalInfo(@ModelAttribute("dtoMy") Mypage dto, HttpSession httpSession, Model model, MemberVo vo, TheaterVo vo1) throws Exception {
		vo.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		Member AddInfo = memberService.selectOne(vo);
		model.addAttribute("AddInfo", AddInfo);
		
		List<Theater> thList = theaterService.selectList(vo1);
		model.addAttribute("thList", thList);
		
		return "infra/mypage/user/additionalInfo";
	}
	
	@RequestMapping(value="additinalInfoUpdt")
	public String additinalInfoUpdt(Mypage dto,  MypageVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.updateAddInfo(dto);
		
		service.insertFavoriteTheater(dto, vo);
		
		return "redirect:/mypage/additionalInfo";
	}

}
