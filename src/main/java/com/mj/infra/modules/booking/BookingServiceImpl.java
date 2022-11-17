package com.mj.infra.modules.booking;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
	

}
