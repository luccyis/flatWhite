package com.mj.infra.modules.booking;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.timetable.TimetableServiceImpl;

@RestController
@RequestMapping(value="/pay/")
@SessionAttributes({"tid"})
public class BookingRestController {
	
	@Autowired 
	BookingServiceImpl service;
	@Autowired
	TimetableServiceImpl serviceTimetable;
	@Autowired
	MovieServiceImpl serviceMovie;

	@JsonProperty
	JSONObject jsonObject = new JSONObject();
	
	//카카오페이
	@RequestMapping(value="kakaopayReady")
	public KakaopayReady payReady (@RequestParam(name = "movieTitle") String movieTitle, @RequestParam(name = "total_amount") int totalAmount, @ModelAttribute("dtoBk") Booking dto, Model model, KakaopayReady vo) throws Exception {
		 
		KakaopayReady kakaopayReady = service.payReady(movieTitle, totalAmount, dto);
		model.addAttribute("tid", kakaopayReady.getTid());
		
		System.out.println("카카오페이이이이" + kakaopayReady.getNext_redirect_pc_url());
		System.out.println("tid??" + kakaopayReady.getTid());
		
		return kakaopayReady;
	}
	
    // 결제승인요청
	@RequestMapping(value="kakaopayApproval")
	public String payCompleted(@RequestParam("pg_token") String pgToken, @ModelAttribute("tid") String tid,  @ModelAttribute("dtoBk") Booking dto,  Model model, SessionStatus sessionStatus) throws Exception {
		
		System.out.println("승인까지 갈수있어?");
		// 카카오 결제 요청하기
		KakaoPayApproval kakaoPayApproval = service.payApprove(tid, pgToken, dto);
		
		kakaoPayApproval.getTid();
		System.out.println(kakaoPayApproval.getTid());
		
		URL url = new URL("https://kapi.kakao.com/v1/payment/approve");
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("POST");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() == 200) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		}
		
		return bufferedReader.readLine();
		
//		service.insertBooking(dto);
//		 
//		dto.setTdbkSeq(dto.getTdbkSeq());
//		for(int i=0; i<dto.getTdbsSeatNums().length; i++) {
//			dto.setTdbsSeatNum(dto.getTdbsSeatNums()[i]);
//			service.insertBookingSeat(dto);
//		 }
		
//		sessionStatus.setComplete();
	}
	// 결제 취소시 실행 url
	@GetMapping("kakaopayCancel")
	public String payCancel() {
		return "redirect:/booking/bookingPay";
	}
    
	// 결제 실패시 실행 url    	
	@GetMapping("/kakaopayFail")
	public String payFail() {
		return "redirect:/booking/bookingPay";
	}
	
	
		
	
	

	


}
