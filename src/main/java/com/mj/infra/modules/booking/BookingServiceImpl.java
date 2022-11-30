package com.mj.infra.modules.booking;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class BookingServiceImpl implements BookingService {
	
	@Autowired
	BookingDao dao;

	@Override
	public List<Booking> selectList(BookingVo vo) throws Exception {
		List<Booking> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Booking selectOne(BookingVo vo) throws Exception {
		Booking result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int insertBooking(Booking dto) throws Exception {
		return dao.insertBooking(dto);
	}

	@Override
	public int insertBookingSeat(Booking dto) throws Exception {
		return dao.insertBookingSeat(dto);
	}

	@Override
	public List<Booking> monthListBooking() throws Exception {
		List<Booking> list = dao.monthListBooking();
		return list;
	}

	@Override
	public int selectOneCount(BookingVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	
	//카카오페이
	// header() 셋팅
	private HttpHeaders getHeaders() throws Exception {
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 350f7c3672cdc83cebf0a98072bdcd72");
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		return headers;
	}
	
	//결제준비
	public KakaopayReady payReady(Booking dto) throws Exception {
		
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", "megabox");
		params.add("partner_user_id", "megabox");
		params.add("item_name",	dto.getTdmvMovieTitle());
		params.add("quantity", "1");
		params.add("total_amount", dto.getTdbkTotalCost());
		params.add("item_code", dto.getTdttSeq());
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://3.35.136.131/booking/kakaopayApproval");
		params.add("cancel_url", "http://3.35.136.131/booking/kakaopayCancel");
		params.add("fail_url", "http://3.35.136.131/booking/kakaopayFail");
		
		HttpEntity<MultiValueMap<String, String>> body  = new HttpEntity<MultiValueMap<String, String>>(params, this.getHeaders());
		// 외부url요청 통로 열기.
		RestTemplate template = new RestTemplate();
		String url = "https://kapi.kakao.com/v1/payment/ready";
        // template으로 값을 보내고 받아온 ReadyResponse값 readyResponse에 저장.
		KakaopayReady KakaopayReady = template.postForObject(url, body, KakaopayReady.class);
		
		return KakaopayReady;
	}
	
	//결제승인
	public KakaoPayApproval payApprove(String tid, String pgToken, Booking dto) throws Exception  {
		
		// request값 담기.
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", tid);
		params.add("partner_order_id", "megabox"); // 주문명
		params.add("partner_user_id", "megabox");
		params.add("pg_token", pgToken);
		
        // 하나의 map안에 header와 parameter값을 담아줌.
		HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(params, this.getHeaders());
		
        // 외부url 통신
		RestTemplate template = new RestTemplate();
		String url = "https://kapi.kakao.com/v1/payment/approve";
        // 보낼 외부 url, 요청 메시지(header,parameter), 처리후 값을 받아올 클래스. 
		KakaoPayApproval KakaoPayApproval = template.postForObject(url, requestEntity, KakaoPayApproval.class);
		System.out.println("카카오페이 서비스임플");
		System.out.println(KakaoPayApproval.getAmount());
		System.out.println(KakaoPayApproval.getPg_token());
		
		return KakaoPayApproval;

		}

	@Override
	public Booking selectListAfterPay(Booking dto) throws Exception {
		Booking result = dao.selectListAfterPay(dto);
		return result;
	}
	
	

}
	
