package com.mj.infra.modules.theaterPlex;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlexServiceImpl implements PlexService {

	@Autowired
	PlexDao dao;
	
	@Override
	public List<Plex> selectList(PlexVo vo) throws Exception {
		List<Plex> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Plex selectOne(PlexVo vo) throws Exception {
		Plex result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int selectOneCount(PlexVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Plex dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public int update(Plex dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Plex dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(PlexVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public List<Plex> selectTdthList() throws Exception {
		return dao.selectTdthList();
	}
	
	

}
