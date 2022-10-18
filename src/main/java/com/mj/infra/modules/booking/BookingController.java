package com.mj.infra.modules.booking;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.modules.movie.Movie;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.timetable.Timetable;
import com.mj.infra.modules.timetable.TimetableServiceImpl;
import com.mj.infra.modules.timetable.TimetableVo;

@Controller
@RequestMapping(value="/booking/")
public class BookingController {
	
	@Autowired 
	BookingServiceImpl service;
	@Autowired
	TimetableServiceImpl serviceTimetable;
	@Autowired
	MovieServiceImpl serviceMovie;
	
	//영화예매 - 결제 
	@RequestMapping(value="bookingPay")
	public String bookingPay(TimetableVo vo, Model model, Movie dto) throws Exception {
		Timetable item = serviceTimetable.selectOneChoiceSeat(vo);
		model.addAttribute("item", item);
		
		return "infra/booking/user/bookingPay";
	}
	
	@RequestMapping(value="bookingResult")
	public String bookingResult(Booking dto, Model model) throws Exception {
		service.insertBooking(dto);
		
		 for(int i=0; i<좌석수; i++) {
			 dto.setTdbkSeq(dto.getTdbkSeq());
			 service.insertBookingSeat(dto);
		 }
		 
		
		return "infra/booking/user/bookingResult";
	}


}
