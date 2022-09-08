package com.mj.infra.modules.codegroup;

public class CodeGroupVo {

	private Integer shOption;
	private String shValue;
	
	private Integer shDelNy;
	
	private String cgSeq;
	private String cgName;
	private String cgNameEng;

	public String getCgNameEng() {
		return cgNameEng;
	}
	public void setCgNameEng(String cgNameEng) {
		this.cgNameEng = cgNameEng;
	}
	public String getCgName() {
		return cgName;
	}
	public void setCgName(String cgName) {
		this.cgName = cgName;
	}
	public String getCgSeq() {
		return cgSeq;
	}
	public void setCgSeq(String cgSeq) {
		this.cgSeq = cgSeq;
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
