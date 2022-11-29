package com.mj.infra.modules.booking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mj.infra.common.util.UtilDateTime;
import com.mj.infra.modules.movie.Movie;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.timetable.Timetable;
import com.mj.infra.modules.timetable.TimetableServiceImpl;
import com.mj.infra.modules.timetable.TimetableVo;

@Controller
@RequestMapping(value="/booking/")
@SessionAttributes({"dtoBk", "tid"})
public class BookingController {
	
	@Autowired 
	BookingServiceImpl service;
	@Autowired
	TimetableServiceImpl serviceTimetable;
	@Autowired
	MovieServiceImpl serviceMovie;

	@ModelAttribute("dtoBk")
	public Booking setEmptyBooking() {
		return new Booking();
	}
	
	public void setSearchAndPaging(BookingVo vo) throws Exception {
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null || vo.getShDateStart() == "" ? null : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null || vo.getShDateEnd() == "" ? null : UtilDateTime.add59TimeString(vo.getShDateEnd()));
		
		vo.setParamsPaging(service.selectOneCount(vo));
	}
	
	 
	//영화예매 - 결제 
	@RequestMapping(value="bookingPay")
	public String bookingPay(@ModelAttribute("dtoBk") Booking dto, TimetableVo vo, Model model) throws Exception {
		
		Timetable item = serviceTimetable.selectOneChoiceSeat(vo);
		model.addAttribute("item", item);
		
		List<Timetable> list = serviceTimetable.selectListPrice(vo);
		model.addAttribute("list", list);
		
		System.out.println("체크 합시다 극장명 : "+dto.getTdthBranch());
		System.out.println("체크 합시다 영화제목 : "+dto.getTdmvMovieTitle());
		System.out.println("체크 합시다 가격 : "+dto.getThprPrice());
		System.out.println("체크 합시다 좌석번호 : "+dto.getTdbsSeatNums().length);
		System.out.println("체크 합시다 총 가격 : "+dto.getTdbkTotalCost());
		
		for (int i = 0; i < dto.getTdbsSeatNums().length; i++) {
			System.out.println(dto.getTdbsSeatNums()[i]);
		}
		
		return "infra/booking/user/bookingPay";
	}
	
	//카카오페이
	@ResponseBody
	@RequestMapping(value="kakaopayReady")
	public KakaopayReady payReady (@ModelAttribute("dtoBk") Booking dto, Model model) throws Exception {
		 
		KakaopayReady kakaopayReady = service.payReady(dto);
		model.addAttribute("tid", kakaopayReady.getTid());
		
		System.out.println("카카오페이이이이" + kakaopayReady.getNext_redirect_pc_url());
		System.out.println("tid??" + kakaopayReady.getTid());
		
		return kakaopayReady;
	}
	
	@RequestMapping(value="kakaopayApproval")
	public String payCompleted(@RequestParam("pg_token") String pgToken, @ModelAttribute("tid") String tid,  @ModelAttribute("dtoBk") Booking dto,  Model model, HttpSession httpSession,  Movie dto1) throws Exception {
		
		// 카카오 결제 요청하기
		KakaoPayApproval kakaoPayApproval = service.payApprove(tid, pgToken, dto);
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.convertValue(kakaoPayApproval, Map.class);
		
		for(String key : map.keySet()) {
			String value = String.valueOf(map.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}
		
		Map<String, Object> amount = new HashMap<String, Object>();
		amount = (Map<String, Object>) map.get("amount");
		
		for (String key : amount.keySet()) {
			String value = String.valueOf(amount.get(key));
			System.out.println("[key]: " + key + ", [value]: " + value);
		}
		
		dto.setTdmvMovieTitle(map.get("item_name").toString());
		dto.setTdttSeq(map.get("item_code").toString());
		dto.setTdbkTotalCost(amount.get("total").toString());
		dto.setIfmmSeq((String)httpSession.getAttribute("sessSeq"));
		
		Booking booking = (Booking) httpSession.getAttribute("dtoBk");
		
		service.insertBooking(dto);
		dto.setTdbkSeq(dto.getTdbkSeq());
		
		for(int i = 0; i < booking.getTdbsSeatNums().length; i++) {
			dto.setTdbsSeatNum(booking.getTdbsSeatNums()[i]);
			service.insertBookingSeat(dto);
		}
		
		Booking result = service.selectListAfterPay(dto);
		model.addAttribute("result", result);
			
		return "infra/booking/user/bookingResult";
	}
	
	// 결제 취소시 실행 url
	@GetMapping("kakaopayCancel")
	public String payCancel() {
		return "redirect:/timetable/choiceMovie";
	}
    
	// 결제 실패시 실행 url    	
	@GetMapping("/kakaopayFail")
	public String payFail() {
		return "redirect:/timetable/choiceMovie"; 
	}
	
	//xdmin
	@RequestMapping(value="bookingList")
	public String payList(BookingVo vo, Model model) throws Exception {
		setSearchAndPaging(vo);
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Booking> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "infra/booking/xdmin/bookingList";
	}
	
	


}
