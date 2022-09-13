package com.mj.infra.modules.login;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class LoginController {
/*	@Autowired*/
/*	LoginServiceImpl service;*/

	@RequestMapping(value = "/login")
	public String Login(Model model) throws Exception{
		/* List<Login> list = service.selectList(); */
		/* model.addAttribute("list", list); */
		return "infra/login/user/login";
	}
	


	
}
