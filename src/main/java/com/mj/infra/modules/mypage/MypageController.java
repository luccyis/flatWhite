package com.mj.infra.modules.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/mypage/")
public class MypageController {
	
	@RequestMapping(value="main")
	public String mypageMain() throws Exception {
		return "infra/mypage/user/mypageMain";
	}
	
	@RequestMapping(value="Mod")
	public String mypageMod() throws Exception {
		return "infra/mypage/user/mypageMod";
	}
	
	@RequestMapping(value="bookingList")
	public String mypageBookingList() throws Exception {
		return "infra/mypage/user/mypageBookingList";
	}
	
	@RequestMapping(value="additionalInfo")
	public String additionalInfo() throws Exception {
		return "infra/mypage/user/additionalInfo";
	}

}
