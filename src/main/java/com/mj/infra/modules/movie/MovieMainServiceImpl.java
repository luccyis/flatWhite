package com.mj.infra.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MovieMainServiceImpl implements MovieMainService {
	
	@Autowired
	MovieMainDao dao;
	
	@Override
	public List<MovieMain> selectList() throws Exception{
		List<MovieMain> list = dao.selectList();
		return list;
	}

}
