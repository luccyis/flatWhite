package com.mj.infra.modules.theater;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mj.infra.modules.codegroup.CodeGroup;
import com.mj.infra.modules.codegroup.CodeGroupVo;

@Repository
public class TheaterDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.theater.theaterMapper";
	
	public List<Theater> selectList(TheaterVo vo){
		List<Theater> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public List<Theater> selectList(){
		List<Theater> list = sqlSession.selectList(namespace + ".selectList", "");
		return list;
	} 
	
	public int insert(Theater dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		return result;
	}
	
	public Theater selectOne(TheaterVo vo) {
		Theater result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int selectOneCount(TheaterVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
	}
	
	public int update(Theater dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(Theater dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(TheaterVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	
}
