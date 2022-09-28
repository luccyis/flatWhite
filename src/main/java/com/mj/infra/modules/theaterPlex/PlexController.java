package com.mj.infra.modules.theaterPlex;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/plex/")
public class PlexController {
	
	@RequestMapping(value="list")
	public String plexList() throws Exception {
		return "infra/theater/xdmin/plexList";
	}
	
	@RequestMapping(value="form")
	public String plexForm() throws Exception {
		return "infra/theater/xdmin/plexForm";
	}
	
	

}
