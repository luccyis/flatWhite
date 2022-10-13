package com.mj.infra.modules.timetable;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class TimetableServiceImpl implements TimetableService {
	
	@Autowired
	TimetableDao dao;

	@Override
	public List<Timetable> selectList(TimetableVo vo) throws Exception {
		List<Timetable> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Timetable selectOne(TimetableVo vo) throws Exception {
		Timetable result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int selectOneCount(TimetableVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Timetable dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public int update(Timetable dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Timetable dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(TimetableVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public List<Timetable> selectListTimeFromMovie(TimetableVo vo) throws Exception {
		List<Timetable> list = dao.selectListTimeFromMovie(vo);
		return list;
	}

	@Override
	public List<Timetable> selectListTime(TimetableVo vo) throws Exception {
		List<Timetable> list = dao.selectListTime(vo);
		return list;
	}

	@Override
	public Timetable selectOneChoiceSeat(TimetableVo vo) throws Exception {
		Timetable result = dao.selectOneChoiceSeat(vo);
		return result;
	}

	@Override
	public List<Timetable> selectListPrice(TimetableVo vo) throws Exception {
		List<Timetable> list = dao.selectListPrice(vo);
		return list;
	}
	

	
	


	
	
	
}
