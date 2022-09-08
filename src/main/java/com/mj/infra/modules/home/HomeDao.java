package com.mj.infra.modules.home;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.home.HomeMapper";
	
	public List<Home> selectList(){
		List<Home> list = sqlSession.selectList(namespace + ".selectList", "");
		return list;
		

	}
}
