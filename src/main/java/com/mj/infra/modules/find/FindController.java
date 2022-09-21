package com.mj.infra.modules.find;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/find/")
public class FindController {
	
	@RequestMapping(value="findId")
	public String findId() throws Exception {
		return "infra/user/findId";
	}
	
	@RequestMapping(value="findIdResult")
	public String findIdResult() throws Exception {
		return "infra/user/findIdResult";
	}
	
	@RequestMapping(value="findPw")
	public String findPw() throws Exception {
		return "infra/user/findPw";
	}
	
	@RequestMapping(value="findPwResult")
	public String findPwResult() throws Exception {
		return "infra/user/findPwResult";
	}

}
