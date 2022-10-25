package com.mj.infra.modules.mypage;

import java.util.List;

public interface MypageService {
	
	public int selectOneCountFavoriteTheater(MypageVo vo) throws Exception;
	
	public Mypage selectOneFavoritTheater(MypageVo vo) throws Exception;
	
	public List<Mypage> selectListMypageHistory(MypageVo vo) throws Exception;
	
	public int updateMypage(Mypage dto) throws Exception;
	
	public int updateAddInfo(Mypage dto) throws Exception;

	public void insertFavoriteTheater(Mypage dto, MypageVo vo) throws Exception;
	
	
}
