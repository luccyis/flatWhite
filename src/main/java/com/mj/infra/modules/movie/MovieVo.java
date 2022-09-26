package com.mj.infra.modules.movie;

import com.mj.infra.common.base.BaseVo;

public class MovieVo extends BaseVo {
	
	private Integer shOption;
	private String shValue;
	private Integer shDelNy;
	
	private String tdmvSeq;

	public Integer getShOption() {
		return shOption;
	}

	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}

	public Integer getShDelNy() {
		return shDelNy;
	}

	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}

	public String getTdmvSeq() {
		return tdmvSeq;
	}

	public void setTdmvSeq(String tdmvSeq) {
		this.tdmvSeq = tdmvSeq;
	}
	

}
