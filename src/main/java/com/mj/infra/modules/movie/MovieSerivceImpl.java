package com.mj.infra.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieSerivceImpl implements MovieService {

	@Autowired
	MovieDao dao;

	@Override
	public List<Movie> selectList(MovieVo vo) throws Exception {
		List<Movie> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Movie selectOne(MovieVo vo) throws Exception {
		Movie result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int selectOneCount(MovieVo vo) throws Exception {
		return dao.selectOneConut(vo);
	}

	@Override
	public int insert(Movie dto) throws Exception {
		int result = dao.insert(dto);
		System.out.println("service result: " + result);
		return result;
	}

	@Override
	public int update(Movie dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Movie dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(MovieVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	
}
