package com.mj.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.mj.infra.modules.codegroup.CodeGroup;

@Repository
public class CodeDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.code.CodeMapper";
	
	public List<Code> selectList(){
		List<Code> list = sqlSession.selectList(namespace + ".selectList", "");
		return list;
	}
	
	public List<Code> selectList(CodeVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public Code selectOne(CodeVo vo) {
		Code result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int selectOneCount(CodeVo vo) {
		return sqlSession.selectOne(namespace +".selectOneCount", vo);
	}
	
	public int update(Code dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(Code dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(CodeVo vo) {return sqlSession.delete(namespace + ".delete", vo);}

//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
	
	public List<Code> selectCodeGroupList(){
		return sqlSession.selectList(namespace + ".selectCodeGroupList");
	}
	
	
}
