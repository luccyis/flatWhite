package com.mj.infra.modules.theaterPlex;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PlexDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.theaterPlex.PlexMapper";
	
	public List<Plex> selectList(PlexVo vo){
		List<Plex> list = sqlSession.selectList(namespace + ".selectList", vo); 
		return list;
	}
	
	public Plex selectOne(PlexVo vo){
		Plex result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int selectOneCount(PlexVo vo) {return sqlSession.selectOne(namespace +".selectOneCount", vo);}
	public int insert(Plex dto) {return sqlSession.insert(namespace +".insert", dto);}
	public int update(Plex dto) {return sqlSession.update(namespace +".update", dto);}
	public int uelete(Plex dto) {return sqlSession.update(namespace +".selectOne", dto);}
	public int delete(PlexVo vo) {return sqlSession.delete(namespace +".delete", vo);}

	public List<Plex> selectTdthList() { return sqlSession.selectList(namespace + ".selectTdthList");}
	

	
}
