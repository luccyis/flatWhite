package com.mj.infra.modules.mypage;

import java.util.List;

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
	
	public List<Mypage> selectListFavoritTheater(MypageVo vo){
		List<Mypage> list= sqlSession.selectList(namespace + ".selectListFavoritTheater", vo);
		return list;
	}
	
	public List <Mypage> selectListMypageHistory(MypageVo vo) {
		List<Mypage> list= sqlSession.selectList(namespace + ".selectListMypageHistory", vo);
		return list;
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

	public int deleteFavoriteTheater(MypageVo vo) {
		return sqlSession.delete(namespace +".deleteFavoriteTheater", vo);
	}
	

}
