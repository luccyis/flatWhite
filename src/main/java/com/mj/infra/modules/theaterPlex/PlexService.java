package com.mj.infra.modules.theaterPlex;

import java.util.List;

public interface PlexService {

	public List<Plex> selectList(PlexVo vo) throws Exception;
	public Plex selectOne(PlexVo vo) throws Exception;
	
	public int selectOneCount(PlexVo vo) throws Exception;
	public int insert(Plex dto) throws Exception;
	public int update(Plex dto) throws Exception;
	public int uelete(Plex dto) throws Exception;
	public int delete(PlexVo vo) throws Exception;
	
	

}
