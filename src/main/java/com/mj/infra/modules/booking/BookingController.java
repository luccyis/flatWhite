package com.mj.infra.modules.booking;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mj.infra.common.util.UtilDateTime;
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
	@RequestMapping(value="kakaopay")
	public String kakaopay (Model model) throws Exception {
		
		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		connection.setRequestMethod("POST");
		connection.setRequestProperty("Authorization", "KakaoAK 350f7c3672cdc83cebf0a98072bdcd72");
		connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		connection.setDoOutput(true); 
		connection.setDoInput(true);
		
		
		
		
		return "infra/booking/user/bookingResult";
	}
	
	
	
	
//	@RequestMapping(value="kakaopay")  
//	public String kakaopay (@ModelAttribute("dtoBk") Booking dto, Model model, TimetableVo vo, @RequestParam("name") String name, @RequestParam("price") String price, @RequestParam("id") String id) throws Exception { 
//		
//			//보내는 부분
//			URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
//			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//			connection.setRequestMethod("POST");
//			connection.setRequestProperty("Authorization", "KakaoAK 350f7c3672cdc83cebf0a98072bdcd72");
//			connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//			connection.setDoOutput(true);
//			connection.setDoInput(true);
//			
//			Map<String, String> params = new HashMap<String, String>();
//			params.put("cid", "TC0ONETIME");
//			params.put("partner_order_id", "megabox");
//			params.put("partner_user_id", id);
//			params.put("item_name", name);
//			params.put("quantity", "1");
//			params.put("total_amount", price);
//			params.put("tax_free_amount", "0");
//			params.put("approval_url", "http://localhost:8080/booking/bookingResult");
//			params.put("cancel_url", "http://localhost:8080/booking/bookingPay");
//			params.put("fail_url", "http://localhost:8080/booking/bookingPay");
//			
//			String string_params = new String();
//			for (Map.Entry<String, String> elem : params.entrySet()) {
//				string_params += (elem.getKey() +"="+ elem.getValue() +"&");
//			}
//			
//			OutputStream send = connection.getOutputStream(); // 이제 뭔가를 를 줄 수 있다.
//			DataOutputStream dataSend = new DataOutputStream(send); // 이제 데이터를 줄 수 있다.
//			dataSend.writeBytes(string_params); // OutputStream은 데이터를 바이트 형식으로 주고 받기로 약속되어 있다. (형변환)
//			dataSend.close(); // flush가 자동으로 호출이 되고 닫는다. (보내고 비우고 닫다)
//			
//			int result = connection.getResponseCode(); // 전송 잘 됐나 안됐나 번호를 받는다.
//			BufferedReader changer;
//			
//			if(result == 200) {
//				changer = new BufferedReader((new InputStreamReader(connection.getInputStream())));
//			}else {
//				changer = new BufferedReader((new InputStreamReader(connection.getInputStream())));
//			}
//
//			return changer.readLine();
//	}
//
//	@ResponseBody
//	@RequestMapping(value="test")
//	public Map<String, Object> test (@ModelAttribute("dtoBk") Booking dto, Model model, TimetableVo vo, @RequestParam("name") String name, @RequestParam("price") String price, @RequestParam("id") String id) throws Exception {
//		Map<String, Object> returnMap = new HashMap<>();
//		
//		URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
//		HttpURLConnection connection = (HttpURLConnection) url.openConnection();
//		connection.setRequestMethod("POST");
//		connection.setRequestProperty("Authorization", "KakaoAK 350f7c3672cdc83cebf0a98072bdcd72");
//		connection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
//		connection.setDoOutput(true);
//		connection.setDoInput(true);
//		
//		Map<String, String> params = new HashMap<String, String>();
//		params.put("cid", "TC0ONETIME");
//		params.put("partner_order_id", "megabox");
//		params.put("partner_user_id", id);
//		params.put("item_name", name);
//		params.put("quantity", "1");
//		params.put("total_amount", price);
//		params.put("tax_free_amount", "0");
//		params.put("approval_url", "http://localhost:8080/booking/bookingResult");
//		params.put("cancel_url", "http://localhost:8080/booking/bookingPay");
//		params.put("fail_url", "http://localhost:8080/booking/bookingPay");
//		
//		returnMap.put("returnMap", params);
//		
//		return returnMap;
//	}
	
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
