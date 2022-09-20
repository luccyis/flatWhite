package com.mj.infra.modules.codegroup;

public class CodeGroup {

	private String cgSeq;
	private String cgName;
	private String cgNameEng;
	private Integer cgUseNy;
	private Integer cgDelNy;
	private String cgRegTime;
	private String cgModTime;

	
	
	public String getCgRegTime() {
		return cgRegTime;
	}
	public void setCgRegTime(String cgRegTime) {
		this.cgRegTime = cgRegTime;
	}
	public String getCgModTime() {
		return cgModTime;
	}
	public void setCgModTime(String cgModTime) {
		this.cgModTime = cgModTime;
	}
	//count 서브쿼리
	private String xcdSeqCount;
	
	public String getXcdSeqCount() {
		return xcdSeqCount;
	}
	public void setXcdSeqCount(String xcdSeqCount) {
		this.xcdSeqCount = xcdSeqCount;
	}
	public String getCgSeq() {
		return cgSeq;
	}
	public void setCgSeq(String cgSeq) {
		this.cgSeq = cgSeq;
	}
	public String getCgName() {
		return cgName;
	}
	public void setCgName(String cgName) {
		this.cgName = cgName;
	}
	public String getCgNameEng() {
		return cgNameEng;
	}
	public void setCgNameEng(String cgNameEng) {
		this.cgNameEng = cgNameEng;
	}
	public Integer getCgUseNy() {
		return cgUseNy;
	}
	public void setCgUseNy(Integer cgUseNy) {
		this.cgUseNy = cgUseNy;
	}
	public Integer getCgDelNy() {
		return cgDelNy;
	}
	public void setCgDelNy(Integer cgDelNy) {
		this.cgDelNy = cgDelNy;
	}
	
	
}
