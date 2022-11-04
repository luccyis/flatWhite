package com.mj.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.infra.common.util.UtilSecurity;

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
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
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
    	dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		return dao.insert(dto);
	}

	@Override
	public int selectOneIdCheck(Member dto) throws Exception {
		return dao.selectOneIdCheck(dto);
	}

	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		dto.setIfmmPassword(UtilSecurity.encryptSha256(dto.getIfmmPassword()));
		return dao.selectOneLogin(dto);
	}
	@Override
	public int kakaoInst(Member dto) throws Exception {
		return dao.kakaoInst(dto);
	}

	@Override
	public Member snsLoginSelectOne(Member dto) throws Exception {
		return dao.snsLoginSelectOne(dto);
	}

	
	
		
	
}

