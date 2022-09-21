package com.mj.infra.modules.theater;

import java.util.List;


public interface TheaterService {

	public List<Theater> selectList() throws Exception;
	public List<Theater> selectList(TheaterVo vo) throws Exception;
	public Theater selectOne(TheaterVo vo) throws Exception;
	public int selectOneCount(TheaterVo vo) throws Exception;
	public int insert(Theater dto) throws Exception;
	
	public int update(Theater dto) throws Exception;
	public int uelete(Theater dto) throws Exception;
	public int delete(TheaterVo vo) throws Exception;
 	
}
