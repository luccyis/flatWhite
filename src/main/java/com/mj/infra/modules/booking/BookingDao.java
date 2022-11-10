package com.mj.infra.modules.booking;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BookingDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.booking.BookingMapper";

	public List<Booking> selectList(BookingVo vo) {
		List<Booking> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}

	public Booking selectOne(BookingVo vo) {
		Booking result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}

	public int insertBooking(Booking dto) {
		return sqlSession.insert(namespace + ".insertBooking", dto);
	}
	
	public int insertBookingSeat(Booking dto) {
		return sqlSession.insert(namespace + ".insertBookingSeat", dto);
	}
	
	public List<Booking> monthListBooking() {
		List<Booking> list = sqlSession.selectList(namespace + ".monthListBooking");
		return list;
	}
	
}
