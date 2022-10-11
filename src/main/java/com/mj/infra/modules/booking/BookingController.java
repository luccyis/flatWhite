package com.mj.infra.modules.booking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.modules.timetable.TimetableServiceImpl;

@Controller
@RequestMapping(value="/booking/")
public class BookingController {
	
	@Autowired
	TimetableServiceImpl service;
	

	
	@RequestMapping(value="seatSelect")
	public String seatSelect() throws Exception {
		return "infra/booking/user/seatSelect";
	}
	
	@RequestMapping(value="bookingPay")
	public String bookingPay() throws Exception {
		return "infra/booking/user/bookingPay";
	}
	
	@RequestMapping(value="bookingResult")
	public String bookingResult() throws Exception {
		return "infra/booking/user/bookingResult";
	}
	
	@RequestMapping(value="timeTableList")
	public String timeTableList() throws Exception {
		return "infra/booking/user/timeTableList";
	}
	
	@RequestMapping(value="timeTableForm")
	public String timeTableForm() throws Exception {
		return "infra/booking/user/timeTableForm";
	}

}
