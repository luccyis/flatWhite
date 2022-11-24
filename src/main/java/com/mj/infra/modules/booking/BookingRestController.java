package com.mj.infra.modules.booking;

import java.net.URI;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.mj.infra.modules.movie.MovieServiceImpl;
import com.mj.infra.modules.timetable.TimetableServiceImpl;

@RestController
@RequestMapping(value="/pay/")
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
	@ResponseBody
	@RequestMapping(value="kakaopayReady")
	public String kakaopay (@ModelAttribute("dtoBk") Booking dto, Model model, kakaoPayReadVo vo) throws Exception {
		 
		RestTemplate restTemplate = new RestTemplate();
		URI uri = new URI("https://kapi.kakao.com/v1/payment/ready");
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 350f7c3672cdc83cebf0a98072bdcd72");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		MultiValueMap<String, Object> params = new LinkedMultiValueMap<>();
		
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", "megabox");
		params.add("partner_user_id", dto.getIfmmSeq());
		params.add("item_name", dto.getTdmvMovieTitle());
		params.add("quantity", dto.getTdbsSeatNums().length);
		params.add("total_amount", dto.getTdbkTotalCost());
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://localhost:8080/booking/bookingResult");
		params.add("cancel_url", "http://localhost:8080/booking/bookingPay");
		params.add("fail_url", "http://localhost:8080/booking/bookingPay");
		
		HttpEntity<MultiValueMap<String, Object>> body  = new HttpEntity<MultiValueMap<String, Object>>(params, headers);
		try {
			vo  = restTemplate.postForObject(uri, body, kakaoPayReadVo.class);
			return vo.getNext_redirect_pc_url();
		
		} catch (RestClientException e) {
			 e.printStackTrace();
		}
		
		return "infra/booking/user/bookingPay";	
	}
	
	@RequestMapping(value="kakaopayInfo")
	public KakaoPayApprovalVo kakaopayInfo(String pg_token, KakaoPayApprovalVo vo) throws Exception {
		
		RestTemplate restTemplate = new RestTemplate();
		
		URI uri = new URI("https://kapi.kakao.com/v1/payment/ready");
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 350f7c3672cdc83cebf0a98072bdcd72");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		MultiValueMap<String, Object> params = new LinkedMultiValueMap<>();
		
		params.add("cid", "TC0ONETIME");
		params.add("tid", vo.getTid());
		params.add("partner_order_id","megabox");
		params.add("partner_user_id", vo.getPartner_user_id());
		params.add("pg_token", pg_token);
		params.add("total_amount", vo.getAmount());
		
		HttpEntity<MultiValueMap<String, Object>> body  = new HttpEntity<MultiValueMap<String, Object>>(params, headers);
		
		try {
			vo = restTemplate.postForObject(uri, body,KakaoPayApprovalVo.class);
			
			return vo;
			
		} catch (RestClientException e) {
			e.printStackTrace();
		}
		return null;
	}
		
	
	

	


}
