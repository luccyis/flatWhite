package com.mj.infra.modules.theaterPrice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/theaterPrice/")
public class PriceController {

	@RequestMapping(value="list")
	public String priceList() throws Exception {
		return "infra/theater/xdmin/priceList";
	}
	
	@RequestMapping(value="form")
	public String priceForm() throws Exception {
		return "infra/theater/xdmin/priceForm";
	}
	
}
