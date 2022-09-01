package com.mj.infra.modules.code;

import java.util.List;

import com.mj.infra.modules.codegroup.CodeGroup;

public interface CodeService {
	public List<Code> selectList() throws Exception;

}
