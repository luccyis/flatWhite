package com.mj.infra.modules.movie;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MovieMainDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.movie.MovieMainMapper";
	
	public List<MovieMain> selectList(){
		List<MovieMain> list = sqlSession.selectList(namespace + ".selectList", "");
		return list;
	}
	
	
}
