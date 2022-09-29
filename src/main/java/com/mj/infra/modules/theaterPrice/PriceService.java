package com.mj.infra.modules.theaterPrice;

import java.util.List;

public interface PriceService {
	
	public List<Price> selectList(PriceVo vo) throws Exception;
	
	public Price selectOne(PriceVo vo) throws Exception;
	public int selectOneCount(PriceVo vo) throws Exception;
	public int insert(Price dto) throws Exception;
	public int update(Price dto) throws Exception;
	public int uelete(Price dto) throws Exception;
	public int delete(PriceVo vo) throws Exception;

}
