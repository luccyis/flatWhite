package com.mj.infra.modules.movie;

import java.util.List;

public interface MovieService {
	public List<Movie> selectList(MovieVo vo) throws Exception;
	public Movie selectOne(MovieVo vo) throws Exception;
	public int selectOneCount(MovieVo vo) throws Exception;
	
	public int insert(Movie dto) throws Exception;
	public int update(Movie dto) throws Exception;
	public int uelete(Movie dto) throws Exception;
	public int delete(MovieVo vo) throws Exception;


	

	
}
