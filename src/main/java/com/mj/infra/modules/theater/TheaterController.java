package com.mj.infra.modules.theater;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value ="/theater/")
public class TheaterController {
	
	@RequestMapping(value="theaterList")
	public String theaterList() throws Exception {
		
		return "infra/theater/xdmin/theaterList";
	}

	@RequestMapping(value="theaterForm")
	public String theaterForm() throws Exception {
		return "infra/theater/xdmin/theaterForm";
	}
	
	@RequestMapping(value="plexList")
	public String plexList() throws Exception {
		return "infra/theater/xdmin/plexList";
	}
	
	@RequestMapping(value="plexForm")
	public String plexForm() throws Exception {
		return "infra/theater/xdmin/plexForm";
	}
	
	@RequestMapping(value="priceList")
	public String priceList() throws Exception {
		return "infra/theater/xdmin/priceList";
	}
	
	@RequestMapping(value="priceForm")
	public String priceForm() throws Exception {
		return "infra/theater/xdmin/priceForm";
	}
	
	
}
