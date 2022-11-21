package com.mj.infra.modules.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mj.infra.common.util.UtilDateTime;
import com.mj.infra.modules.booking.BookingVo;
import com.mj.infra.modules.member.Member;
import com.mj.infra.modules.member.MemberVo;
import com.mj.infra.modules.movie.Movie;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.movie.MovieVo;
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
	
	public void setSearchAndPaging(BookingVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	 
	/*
	 * @RequestMapping(value="kakaopay") public String kakaopay
	 * (@ModelAttribute("bk") Booking dto, Model model, TimetableVo vo) throws
	 * Exception { return }
	 */
	
	//영화예매 - 결제 
	@RequestMapping(value="bookingPay")
	public String bookingPay(@ModelAttribute("dtoBk") Booking dto, TimetableVo vo, Model model) throws Exception {
		
		Timetable item = serviceTimetable.selectOneChoiceSeat(vo);
		model.addAttribute("item", item);
		
		List<Timetable> list = serviceTimetable.selectListPrice(vo);
		model.addAttribute("list", list);
		
		System.out.println("체크 합시다 극장명"+dto.getTdthBranch());
		System.out.println("체크 합시다 영화제목"+dto.getTdmvMovieTitle());
		System.out.println("체크 합시다 가격"+dto.getThprPrice());
		System.out.println("체크 합시다 좌석번호"+dto.getTdbsSeatNums().length);
		System.out.println("체크 합시다 총 가격"+dto.getTdbkTotalCost());
		
		for (int i = 0; i < dto.getTdbsSeatNums().length; i++) {
			System.out.println(dto.getTdbsSeatNums()[i]);
		}
		
		return "infra/booking/user/bookingPay";
	}
	
	@RequestMapping(value="bookingResult")
	public String bookingResult(@ModelAttribute("dtoBk") Booking dto, Model model, Movie dto1) throws Exception {
		dto.setTdbkTotalCost(dto.getTdbkTotalCost());
		service.insertBooking(dto);
		 
		dto.setTdbkSeq(dto.getTdbkSeq());
		for(int i=0; i<dto.getTdbsSeatNums().length; i++) {
			dto.setTdbsSeatNum(dto.getTdbsSeatNums()[i]);
			service.insertBookingSeat(dto);
		 }
		
		dto1.setPseq(dto.getTdmvSeq());
		Movie imageItem = serviceMovie.selectMovieImage(dto1);
		model.addAttribute("imageItem", imageItem);
		
		return "infra/booking/user/bookingResult";
	}
	

	@RequestMapping(value="bookingList")
	public String payList(BookingVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Booking> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/booking/xdmin/bookingList";
	}
	
	


}
