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
	
	public List<Code> selectList(){ return sqlSession.selectList(namespace + ".selectList", "");} 

	
}
