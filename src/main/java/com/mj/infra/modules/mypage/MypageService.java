package com.mj.infra.modules.mypage;

public interface MypageService {
	
	public Mypage selectOneFavoritTheater(MypageVo vo) throws Exception;
	
	public Mypage selectOneMypageHistory(MypageVo vo) throws Exception;
	
	public int updateMypage(Mypage dto) throws Exception;
	
	public int updateAddInfo(Mypage dto) throws Exception;

	public int insertFavoriteTheater(Mypage dto, MypageVo vo) throws Exception;
}
