package com.mj.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception{
		List<Code> list = dao.selectList();
		return list;
	}
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		List<Code> list= dao.selectList(vo);
		return list;
	}
	
	@Override
	public Code selectOne(CodeVo vo) throws Exception{
		Code result = dao.selectOne(vo);
		return result;
	}
	
	@Override
	public int selectOneCount(CodeVo vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
	@Override
	public int insert(Code dto) throws Exception{
		int result = dao.insert(dto);
		System.out.println("service result" + result);
		return result;
	}
	
	@Override
	public int update(Code dto) throws Exception{
		return dao.update(dto);
	}

	@Override
	public int uelete(Code dto) throws Exception{
		return dao.uelete(dto);
	}
	
	@Override
	public int delete(CodeVo vo) throws Exception{
		return dao.delete(vo);
	}
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear(); 
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<Code> selectListCachedCode(String cgSeq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if(codeRow.getCgSeq().equals(cgSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}

	@Override
	public List<Code> selectCodeGroupList() throws Exception {
		return dao.selectCodeGroupList();
	}
	
	
  public static String selectOneCachedCode(String code) throws Exception {
	  String rt ="";
	  for(Code codeRow : Code.cachedCodeArrayList) {
		  if (codeRow.getCdSeq().equals(code)) {
			  rt = codeRow.getCdName();
		  } else {
			  // by pass
		  }
	  }
	  return rt;
  }
	  

  public static void clear() throws Exception {
	  Code.cachedCodeArrayList.clear();
  }
  
	
	
		

}
