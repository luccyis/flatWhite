package com.mj.infra.modules.mypage;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MypageDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mj.infra.modules.mypage.MypageMapper";
	
	public Mypage selectOneFavoritTheater(MypageVo vo) {
		Mypage result = sqlSession.selectOne(namespace + ".selectOneFavoritTheater", vo);
		return result;
	}
	
	public Mypage selectOneMypageHistory(MypageVo vo) {
		Mypage result = sqlSession.selectOne(namespace + ".selectOneMypageHistory", vo);
		return result;
	}
 	
	public int updateMypage(Mypage dto) {
		return sqlSession.update(namespace + ".updateMypage", dto);
	}
	
	public int updateAddInfo(Mypage dto) {
		return sqlSession.update(namespace + ".updateAddInfo", dto);
	}
	
	public int insertFavoriteTheater(Mypage dto) {
		return sqlSession.insert(namespace +".insertFavoriteTheater", dto);
	}

	public int selectOneCountFavoriteTheater(MypageVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCountFavoriteTheater", vo);
	}
	

}
