package com.mj.infra.modules.theater;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TheaterServiceImpl implements TheaterService {
	
	@Autowired
	TheaterDao dao;

	@Override
	public List<Theater> selectList() throws Exception {
		
		List<Theater> list = dao.selectList();
		return list;
	}

	@Override
	public List<Theater> selectList(TheaterVo vo) throws Exception {
		List<Theater> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Theater selectOne(TheaterVo vo) throws Exception {
		Theater result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int selectOneCount(TheaterVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Theater dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result" + result);
		return result;
	}

	@Override
	public int update(Theater dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Theater dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(TheaterVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	
	

}
