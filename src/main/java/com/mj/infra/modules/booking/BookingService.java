package com.mj.infra.modules.booking;

import java.util.List;

public interface BookingService {
	
	public List<Booking> selectList(BookingVo vo) throws Exception;
	public Booking selectOne(BookingVo vo) throws Exception;
	
	public int insertBooking(Booking dto) throws Exception;
	public int insertBookingSeat(Booking dto) throws Exception;
	
	public List<Booking> monthListBooking(BookingVo vo) throws Exception;
	
	
	
	

}
