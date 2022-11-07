package com.mj.infra.modules.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired 
	MypageDao dao;
	

	@Override
	public List<Mypage> selectListFavoritTheater(MypageVo vo) throws Exception {
		List<Mypage> list = dao.selectListFavoritTheater(vo);
		return list;
	}


	@Override
	public int selectOneCountFavoriteTheater(MypageVo vo) throws Exception {
		int result = dao.selectOneCountFavoriteTheater(vo);
		return result;
	}


	@Override
	public List<Mypage> selectListMypageHistory(MypageVo vo) throws Exception {
		return dao.selectListMypageHistory(vo);
	}

	@Override
	public int updateMypage(Mypage dto) throws Exception {
		return dao.updateMypage(dto);
	}

	@Override
	public int updateAddInfo(Mypage dto) throws Exception {
		return dao.updateAddInfo(dto);
	}

	@Override
	public void insertFavoriteTheater(Mypage dto, MypageVo vo) throws Exception {
		
		dao.deleteFavoriteTheater(vo);
		
			for(int i=0; i<dto.getXtheaterSort().length; i++) {
				dto.setTdftSort(dto.getXtheaterSort()[i]);
				dto.setTdthSeq(dto.getXtdthSeq()[i]);
				dao.insertFavoriteTheater(dto);
				
			}
		
		
	}
	
	

}
