package com.mj.infra.modules.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mj.infra.modules.member.MemberVo;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired 
	MypageDao dao;
	

	@Override
	public Mypage selectOneFavoritTheater(MypageVo vo) throws Exception {
		Mypage result = dao.selectOneFavoritTheater(vo);
		return result;
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
		
		// 좋아하는 극장이 등록 되어 있는지 확인
		int result = dao.selectOneCountFavoriteTheater(vo);
		
		if(result == 0) {
			// insert
			dao.insertFavoriteTheater(dto);
		} else {
			dao.deleteFavoriteTheater(vo);
			
			for(int i=0; i<dto.getXtheaterSort().length; i++) {
				// delete 전체
				if(dto.getTdthSeq() != null) {
					// insert
					dao.insertFavoriteTheater(dto);
				}
			}
		}
		
	}
	
	

}
