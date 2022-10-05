package com.mj.infra.modules.theaterPrice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PriceServiceImpl implements PriceService {

	@Autowired
	PriceDao dao;

	@Override
	public List<Price> selectList(PriceVo vo) throws Exception {
		List<Price> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Price selectOne(PriceVo vo) throws Exception {
		Price result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int selectOneCount(PriceVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Price dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public int update(Price dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Price dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(PriceVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public List<Price> selectTdthList() throws Exception {
		return dao.selectTdthList();
	}

	

	
	
}
