package com.mj.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		List<Member> list = dao.selectList();
		return list;
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception{
		List<Member> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		Member result = dao.selectOne(vo);
		System.out.println("service result: " + result);
		return result;
	}
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto);
	}
	
	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		return dao.selectOneIdCheck(dto);
	}

	
		
	
}

