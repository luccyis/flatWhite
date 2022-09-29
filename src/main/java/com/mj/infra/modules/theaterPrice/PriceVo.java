package com.mj.infra.modules.theaterPrice;

import com.mj.infra.common.base.BaseVo;

public class PriceVo extends BaseVo {
	
	private Integer shOption;
	private String shValue;
	private Integer shDelNy;
	private String thprSeq;
	private String tdthSeq;
	private String tradTheater_tdthSeq;
	
	public String getTradTheater_tdthSeq() {
		return tradTheater_tdthSeq;
	}
	public void setTradTheater_tdthSeq(String tradTheater_tdthSeq) {
		this.tradTheater_tdthSeq = tradTheater_tdthSeq;
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
	public String getThprSeq() {
		return thprSeq;
	}
	public void setThprSeq(String thprSeq) {
		this.thprSeq = thprSeq;
	}
	public String getTdthSeq() {
		return tdthSeq;
	}
	public void setTdthSeq(String tdthSeq) {
		this.tdthSeq = tdthSeq;
	}

}
