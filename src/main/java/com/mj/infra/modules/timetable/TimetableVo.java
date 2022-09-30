package com.mj.infra.modules.timetable;

import com.mj.infra.common.base.BaseVo;

public class TimetableVo extends BaseVo {

	private Integer shOption;
	private String shValue;
	private Integer shDelNy;
	
	private String tdttSeq;
	private String tdthSeq;
	private String tdpxSeq;
	private String tdmvSeq;
	private String tdttShowTime;
	
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
	public String getTdttSeq() {
		return tdttSeq;
	}
	public void setTdttSeq(String tdttSeq) {
		this.tdttSeq = tdttSeq;
	}
	public String getTdthSeq() {
		return tdthSeq;
	}
	public void setTdthSeq(String tdthSeq) {
		this.tdthSeq = tdthSeq;
	}
	public String getTdpxSeq() {
		return tdpxSeq;
	}
	public void setTdpxSeq(String tdpxSeq) {
		this.tdpxSeq = tdpxSeq;
	}
	public String getTdmvSeq() {
		return tdmvSeq;
	}
	public void setTdmvSeq(String tdmvSeq) {
		this.tdmvSeq = tdmvSeq;
	}
	public String getTdttShowTime() {
		return tdttShowTime;
	}
	public void setTdttShowTime(String tdttShowTime) {
		this.tdttShowTime = tdttShowTime;
	}
	
	
}
