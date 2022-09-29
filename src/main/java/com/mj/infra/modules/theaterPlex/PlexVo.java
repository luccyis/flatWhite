package com.mj.infra.modules.theaterPlex;

import com.mj.infra.common.base.BaseVo;

public class PlexVo extends BaseVo {
	
	private Integer shOption;
	private String shValue;
	private Integer shDelNy;
	private String tdpxSeq;
	private String tdthSeq;
	private String tdthBranch;
	private String tdthRegion;
	
	public String getTdthBranch() {
		return tdthBranch;
	}
	public void setTdthBranch(String tdthBranch) {
		this.tdthBranch = tdthBranch;
	}
	public String getTdthRegion() {
		return tdthRegion;
	}
	public void setTdthRegion(String tdthRegion) {
		this.tdthRegion = tdthRegion;
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
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	public String getTdpxSeq() {
		return tdpxSeq;
	}
	public void setTdpxSeq(String tdpxSeq) {
		this.tdpxSeq = tdpxSeq;
	}
	public String getTdthSeq() {
		return tdthSeq;
	}
	public void setTdthSeq(String tdthSeq) {
		this.tdthSeq = tdthSeq;
	}
	

}
