package com.mj.infra.modules.code;

import com.mj.infra.common.base.BaseVo;

public class CodeVo extends BaseVo {

	private Integer shOption;
	private String shValue;
	
	private Integer shDelNy;
	
	private String cdSeq;
	private String infrCodeGroup_cgSeq;
	
	

	public String getCdSeq() {
		return cdSeq;
	}
	public void setCdSeq(String cdSeq) {
		this.cdSeq = cdSeq;
	}
	public String getInfrCodeGroup_cgSeq() {
		return infrCodeGroup_cgSeq;
	}
	public void setInfrCodeGroup_cgSeq(String infrCodeGroup_cgSeq) {
		this.infrCodeGroup_cgSeq = infrCodeGroup_cgSeq;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
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
	
	
}
