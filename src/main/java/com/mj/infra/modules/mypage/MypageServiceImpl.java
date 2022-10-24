package com.mj.infra.modules.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public Mypage selectOneMypageHistory(MypageVo vo) throws Exception {
		Mypage result = dao.selectOneMypageHistory(vo);
		return result;
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
	public int insertFavoriteTheater(Mypage dto, MypageVo vo) throws Exception {
		
		// 좋아하는 극장이 등록 되어 있는지 확인
		int result = dao.selectOneCountFavoriteTheater(vo);
		
		if(result == 0) {
			// insert
			dao.insertFavoriteTheater(dto);
		} else {
			
			dao.delete(dto);
			
			for(int i=0; i<dto.getAaa().length; i++) {
				// delete 전체
				if(dto.getBbb() != 0) {
					// insert
					dao.insertFavoriteTheater(dto);
				
				}
	
			}
		}
		
		
		
		
		String tdftSeq = vo.getTdftSeq();
		
		if (tdftSeq == null) {
			for (int i=1; i<=3; i++) {
				dto.setTdftSort(i+"");
				return dao.insertFavoriteTheater(dto);
			}
			
		} else {
			dto.setTdftSeq(null);
			for (int i =1; i<= 3; i++) {
				dto.setTdftSort(i+"");
				return dao.insertFavoriteTheater(dto);
			}
		}
		return dao.insertFavoriteTheater(dto);
		
	}
	
	

}
