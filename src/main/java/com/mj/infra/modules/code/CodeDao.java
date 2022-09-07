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
	
	public List<Code> selectList(CodeVo vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo);
		} 
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result: " + result);
		return result;
	}
	
	/*
	 * public List<Code> selectCodeGroup(){ return sqlSession.selectList(namespace +
	 * ".selectCodeGroup",""); }
	 */
	
}
