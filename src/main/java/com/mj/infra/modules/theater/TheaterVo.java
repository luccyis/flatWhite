package com.mj.infra.modules.theater;

import com.mj.infra.common.base.BaseVo;

public class TheaterVo extends BaseVo {
	
	private Integer shOption;
	private String shValue;
	private Integer shDelNy;

	private String tdthSeq;

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

	public String getTdthSeq() {
		return tdthSeq;
	}

	public void setTdthSeq(String tdthSeq) {
		this.tdthSeq = tdthSeq;
	}

}
