package com.mj.infra.modules.code;

import java.util.List;

import com.mj.infra.modules.codegroup.CodeGroup;

public interface CodeService {
	public List<Code> selectList(CodeVo vo) throws Exception;
	
	public int insert(Code dto) throws Exception;
	
	public List<Code> selectCodeGroup() throws Exception;

}
