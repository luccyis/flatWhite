package com.mj.infra.modules.movie;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MovieDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.mj.infra.modules.movie.MovieMapper";
	
	public List<Movie> selectList(MovieVo vo){
		List<Movie> list = sqlSession.selectList(namespace + ".selectList", vo);
		return list;
	}
	
	public Movie selectOne(MovieVo vo) {
		Movie result = sqlSession.selectOne(namespace + ".selectOne", vo);
		return result;
	}
	
	public int selectOneConut (MovieVo vo) {
		return sqlSession.selectOne(namespace +".selectOneCount", vo);
		
	}
	
	public int insert(Movie dto) {return sqlSession.insert(namespace +".insert", dto);}
	public int update(Movie dto) {return sqlSession.update(namespace +".update", dto);}
	public int uelete(Movie dto) {return sqlSession.update(namespace +".uelete", dto);}
	public int delete(MovieVo vo) {return sqlSession.update(namespace +".delete", vo);}

	public List<Movie> selectList() {
		return sqlSession.selectList(namespace + ".selectListAll");
	}

	
	public int selectLastSeq() {
		return sqlSession.selectOne(namespace +".selectLastSeq");
	}
	
	public int insertUpload(Movie dto) {
		return sqlSession.insert(namespace +".insertUpload", dto);
	}

	public Movie selectMovieImage(Movie dto) {
		
		return sqlSession.selectOne(namespace +".selectMovieImage", dto);
	}
	
	public List<Movie> selectListMain(MovieVo vo) {
		return sqlSession.selectList(namespace + ".selectListMain", vo);
	}
	
	public List<Movie> selectListMoviePage(MovieVo vo) {
		return sqlSession.selectList(namespace + ".selectListMoviePage", vo);
	}

	public int insertMovieComment(Movie dto) {
		return sqlSession.insert(namespace + ".insertMovieComment", dto);
	}
	
	public List<Movie> selectListMovieComment (MovieVo vo) {
		return sqlSession.selectList(namespace + ".selectListMovieComment", vo);
	}
	
	public List<Movie> selectListChoiceMovie (MovieVo vo) {
		List<Movie> list = sqlSession.selectList(namespace + ".selectListChoiceMovie", vo);
		return list;
	}
}
