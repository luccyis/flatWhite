package com.mj.infra.modules.movie;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mj.infra.common.util.UtilUpload;

@Service
public class MovieServiceImpl implements MovieService {

	@Autowired
	MovieDao dao;

	@Override
	public List<Movie> selectList(MovieVo vo) throws Exception {
		List<Movie> list = dao.selectList(vo);
		return list;
	}

	@Override
	public Movie selectOne(MovieVo vo) throws Exception {
		Movie result = dao.selectOne(vo);
		return result;
	}

	@Override
	public int selectOneCount(MovieVo vo) throws Exception {
		return dao.selectOneConut(vo);
	}

	@Override
	public int insert(Movie dto) throws Exception {
		int result = dao.insert(dto); // 원래 데이터 인서트
		
		//여기부터 파일
        int tdmvSeq = dao.selectLastSeq(); //seq 자동으로 부여되기때문

        int j = 0;
        for(MultipartFile myFile : dto.getMultipartFile()) {

            if(!myFile.isEmpty()) {
                // postServiceImpl
                String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
                UtilUpload.uploadPost(myFile, pathModule, dto);

                dto.setType("1");
                dto.setDefaultNy(j == 0 ? "1" : "0");
                dto.setSort(j+1+"");
                dto.setPseq(tdmvSeq+"");

                dao.insertUpload(dto);
                j++;
            }
        }
        return result;
	}
	

	@Override
	public int update(Movie dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(Movie dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(MovieVo vo) throws Exception {
		return dao.delete(vo);
	}

	@Override
	public List<Movie> selectList() throws Exception {
		return dao.selectList();
	}

	@Override
	public Movie selectMovieImage(Movie dto) throws Exception {
		return dao.selectMovieImage(dto);
	}

	@Override
	public List<Movie> selectListMain(MovieVo vo) throws Exception {
		List<Movie> list = dao.selectListMain(vo);
		return list;
	}
	

	@Override
	public List<Movie> selectListMoviePage(MovieVo vo) throws Exception {
		List<Movie> list = dao.selectListMoviePage(vo);
		return list;
	}

	@Override
	public int insertMovieComment(Movie dto) throws Exception {
		return dao.insertMovieComment(dto);
	}

	@Override
	public List<Movie> selectListMovieComment(MovieVo vo) throws Exception {
		List<Movie> review = dao.selectListMovieComment(vo);
		return review;
	}

	@Override
	public List<Movie> selectListChoiceMovie(MovieVo vo) throws Exception {
		List<Movie> list = dao.selectListChoiceMovie(vo);
		return list;
	}


	

	


	
	
}
