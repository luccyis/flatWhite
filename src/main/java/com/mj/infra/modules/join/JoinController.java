package com.mj.infra.modules.join;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/join/")
public class JoinController {
	@RequestMapping(value="auth")
	public static String Join(Model model) throws Exception{
		return "infra/member/user/joinAuth";
	}
	
	/*
	 * @RequestMapping(value="form") public static String Join(Model model) throws
	 * Exception{ return "infra/member/user/joinForm"; }
	 */
	

}
