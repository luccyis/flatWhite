package com.mj.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(){ 
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
	public List<Member> selectList(MemberVo vo){
		List<Member> list=sqlSession.selectList(namespace +".selectList", vo);
		return list;
	}
	
	public Member selectOne(MemberVo vo) {
		Member result = sqlSession.selectOne(namespace + ".selectOne", vo);
		System.out.println("dao result: " + result);
		return result;
	}
	
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneCount", vo);}
	
	public int insert(Member dto) {return sqlSession.insert(namespace + ".insert", dto);}
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto);}
	public int uelete(Member dto) {return sqlSession.update(namespace + ".uelete", dto);}
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	

	public int selectOneIdCheck(Member dto) {
		return sqlSession.selectOne(namespace +".idCheck", dto);
	}

	public Member selectOneId(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneId", dto);
	}
	
	public Member selectOneLogin(Member dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
	public int kakaoInst (Member dto) {
		return sqlSession.insert(namespace +".kakaoInst", dto);
	}
	
	public Member snsLoginSelectOne(Member dto) {
		return sqlSession.selectOne(namespace + ".snsLoginSelectOne", dto);
	}
	
	
		
	
}
