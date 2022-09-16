package com.mj.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception{
		List<Code> list = dao.selectList();
		return list;
	}
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list= dao.selectList(vo);
		return list;
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception{
		Code result = dao.selectOne(vo);
		return result;
	}
	
	@Override
	public int selectOneCount(CodeVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int insert(Code dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result" + result);
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception{
		return dao.update(dto);
	}

	@Override
	public int uelete(Code dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CodeVo vo) throws Exception{
		return dao.delete(vo);
	}
}
