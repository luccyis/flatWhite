package com.mj.infra.modules.theaterPrice;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PriceDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.theaterPrice.PriceMapper";
	
	public List<Price> selectList(PriceVo vo){
		List<Price> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public Price selectOne(PriceVo vo) {
		Price result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int selectOneCount(PriceVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	public int insert(Price dto) {return sqlSession.insert(namespace + ".insert", dto);}
	public int update(Price dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(Price dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(PriceVo vo) {return sqlSession.delete(namespace + ".delete", vo);}

	public List<Price> selectTdthList(){return sqlSession.selectList(namespace + ".selectTdthList");}
}
