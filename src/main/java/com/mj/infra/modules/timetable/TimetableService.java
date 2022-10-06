package com.mj.infra.modules.timetable;

import java.util.List;

public interface TimetableService {

public List<Timetable> selectList(TimetableVo vo) throws Exception;
	
	public Timetable selectOne(TimetableVo vo) throws Exception;
	public int selectOneCount(TimetableVo vo) throws Exception;
	public int insert(Timetable dto) throws Exception;
	public int update(Timetable dto) throws Exception;
	public int uelete(Timetable dto) throws Exception;
	public int delete(TimetableVo vo) throws Exception;
	
	public List<Timetable> selectListTimeFromMovie(TimetableVo vo) throws Exception;
	public List<Timetable> selectListTime(TimetableVo vo) throws Exception;
	
}
