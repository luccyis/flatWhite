package com.mj.infra.modules.timetable;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class TimetableDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.timetable.TimetableMapper";
	
	public List<Timetable> selectList(TimetableVo vo){
		List<Timetable> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public Timetable selectOne(TimetableVo vo) {
		Timetable result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int selectOneCount(TimetableVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public int insert(Timetable dto) {return sqlSession.insert(namespace + ".insert", dto);}
	public int update(Timetable dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(Timetable dto) {return sqlSession.update(namespace +".uelete", dto);}
	public int delete(TimetableVo vo) {return sqlSession.delete(namespace +".delete", vo);}
	
	

	
}
