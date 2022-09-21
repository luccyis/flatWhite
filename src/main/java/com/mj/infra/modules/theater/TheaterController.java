package com.mj.infra.modules.theater;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value ="/theater/")
public class TheaterController {
	
	@RequestMapping(value="theaterList")
	public String theaterList() throws Exception {
		
		return "infr/theater/xdmin/theaterList";
	}

	@RequestMapping(value="theaterForm")
	public String theaterForm() throws Exception {
		return "infr/theater/xdmin/theaterForm";
	}
	
	@RequestMapping(value="plexList")
	public String plexList() throws Exception {
		return "infr/theater/xdmin/plexList";
	}
	
	@RequestMapping(value="plexForm")
	public String plexForm() throws Exception {
		return "infr/theater/xdmin/plexForm";
	}
	
	@RequestMapping(value="priceList")
	public String priceList() throws Exception {
		return "infr/theater/xdmin/priceList";
	}
	
	@RequestMapping(value="priceForm")
	public String priceForm() throws Exception {
		return "infr/theater/xdmin/priceForm";
	}
	
	
}
