package com.mj.infra.modules.booking;

import com.mj.infra.common.base.Base;

public class Booking extends Base {
	
	//결제 테이블
	private String tdbkSeq;
	private String tdbkPayment;
	private String tdbkBookingDate;
	private String ifmmSeq;
	private String tdttSeq;
	private String tdbkTotalCost;
	
	//결제seat 
	private String[] tdbsSeq;
	private String tdbsSeatNum;
	private String[] tdbsTeenagerNy;
	private String thprSeq;
	private String[] tdbsSeatNums;
	
	//영화
	private String tdmvSeq;
	private String tdmvMovieTitle;
	private String tdmvAge;
	private String tdmvTitleEng;
	private String tdmvShowType;
	private String tdmvState;
	
	//극장
	private String tdthSeq;
	private String tdthRegion;
	private String tdthBranch;
	
	//상영관
	private String tdpxSeq;
	private String tdpxPlexName;
	private String tdpxSittingColNum;
	private String tdpxSittingRowNum;
	private String tdpxTotalSeatNum;
	
	//타임테이블
	private String tdttShowTime;
	private String tdttEndTime;
	private String tdttMorningNy;
	
	//가격
	private String thprPrice;
	private String thprWeekendNy;
	private String thprMorningNy;
	private String thprTeenagerNy;
	
	//회원
	private String ifmmPhone;
	
	//관리자 결제 관리
	private String bkDate;
	private Integer bkSum;
	
	public Integer getBkSum() {
		return bkSum;
	}
	public void setBkSum(Integer bkSum) {
		this.bkSum = bkSum;
	}
	public String getBkDate() {
		return bkDate;
	}
	public void setBkDate(String bkDate) {
		this.bkDate = bkDate;
	}

	public String getTdmvState() {
		return tdmvState;
	}
	public void setTdmvState(String tdmvState) {
		this.tdmvState = tdmvState;
	}
	public String getIfmmPhone() {
		return ifmmPhone;
	}
	public void setIfmmPhone(String ifmmPhone) {
		this.ifmmPhone = ifmmPhone;
	}
	public String getTdbkSeq() {
		return tdbkSeq;
	}
	public void setTdbkSeq(String tdbkSeq) {
		this.tdbkSeq = tdbkSeq;
	}
	public String getTdbkPayment() {
		return tdbkPayment;
	}
	public void setTdbkPayment(String tdbkPayment) {
		this.tdbkPayment = tdbkPayment;
	}
	public String getTdbkBookingDate() {
		return tdbkBookingDate;
	}
	public void setTdbkBookingDate(String tdbkBookingDate) {
		this.tdbkBookingDate = tdbkBookingDate;
	}
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getTdttSeq() {
		return tdttSeq;
	}
	public void setTdttSeq(String tdttSeq) {
		this.tdttSeq = tdttSeq;
	}
	public String getTdbkTotalCost() {
		return tdbkTotalCost;
	}
	public void setTdbkTotalCost(String tdbkTotalCost) {
		this.tdbkTotalCost = tdbkTotalCost;
	}
	public String[] getTdbsSeq() {
		return tdbsSeq;
	}
	public void setTdbsSeq(String[] tdbsSeq) {
		this.tdbsSeq = tdbsSeq;
	}
	public String getTdbsSeatNum() {
		return tdbsSeatNum;
	}
	public void setTdbsSeatNum(String tdbsSeatNum) {
		this.tdbsSeatNum = tdbsSeatNum;
	}
	public String[] getTdbsTeenagerNy() {
		return tdbsTeenagerNy;
	}
	public void setTdbsTeenagerNy(String[] tdbsTeenagerNy) {
		this.tdbsTeenagerNy = tdbsTeenagerNy;
	}
	public String getThprSeq() {
		return thprSeq;
	}
	public void setThprSeq(String thprSeq) {
		this.thprSeq = thprSeq;
	}
	public String[] getTdbsSeatNums() {
		return tdbsSeatNums;
	}
	public void setTdbsSeatNums(String[] tdbsSeatNums) {
		this.tdbsSeatNums = tdbsSeatNums;
	}
	public String getTdmvSeq() {
		return tdmvSeq;
	}
	public void setTdmvSeq(String tdmvSeq) {
		this.tdmvSeq = tdmvSeq;
	}
	public String getTdmvMovieTitle() {
		return tdmvMovieTitle;
	}
	public void setTdmvMovieTitle(String tdmvMovieTitle) {
		this.tdmvMovieTitle = tdmvMovieTitle;
	}
	public String getTdmvAge() {
		return tdmvAge;
	}
	public void setTdmvAge(String tdmvAge) {
		this.tdmvAge = tdmvAge;
	}
	public String getTdmvTitleEng() {
		return tdmvTitleEng;
	}
	public void setTdmvTitleEng(String tdmvTitleEng) {
		this.tdmvTitleEng = tdmvTitleEng;
	}
	public String getTdmvShowType() {
		return tdmvShowType;
	}
	public void setTdmvShowType(String tdmvShowType) {
		this.tdmvShowType = tdmvShowType;
	}
	public String getTdthSeq() {
		return tdthSeq;
	}
	public void setTdthSeq(String tdthSeq) {
		this.tdthSeq = tdthSeq;
	}
	public String getTdthRegion() {
		return tdthRegion;
	}
	public void setTdthRegion(String tdthRegion) {
		this.tdthRegion = tdthRegion;
	}
	public String getTdthBranch() {
		return tdthBranch;
	}
	public void setTdthBranch(String tdthBranch) {
		this.tdthBranch = tdthBranch;
	}
	public String getTdpxSeq() {
		return tdpxSeq;
	}
	public void setTdpxSeq(String tdpxSeq) {
		this.tdpxSeq = tdpxSeq;
	}
	public String getTdpxPlexName() {
		return tdpxPlexName;
	}
	public void setTdpxPlexName(String tdpxPlexName) {
		this.tdpxPlexName = tdpxPlexName;
	}
	public String getTdpxSittingColNum() {
		return tdpxSittingColNum;
	}
	public void setTdpxSittingColNum(String tdpxSittingColNum) {
		this.tdpxSittingColNum = tdpxSittingColNum;
	}
	public String getTdpxSittingRowNum() {
		return tdpxSittingRowNum;
	}
	public void setTdpxSittingRowNum(String tdpxSittingRowNum) {
		this.tdpxSittingRowNum = tdpxSittingRowNum;
	}
	public String getTdpxTotalSeatNum() {
		return tdpxTotalSeatNum;
	}
	public void setTdpxTotalSeatNum(String tdpxTotalSeatNum) {
		this.tdpxTotalSeatNum = tdpxTotalSeatNum;
	}
	public String getTdttShowTime() {
		return tdttShowTime;
	}
	public void setTdttShowTime(String tdttShowTime) {
		this.tdttShowTime = tdttShowTime;
	}
	public String getTdttEndTime() {
		return tdttEndTime;
	}
	public void setTdttEndTime(String tdttEndTime) {
		this.tdttEndTime = tdttEndTime;
	}
	public String getTdttMorningNy() {
		return tdttMorningNy;
	}
	public void setTdttMorningNy(String tdttMorningNy) {
		this.tdttMorningNy = tdttMorningNy;
	}
	public String getThprPrice() {
		return thprPrice;
	}
	public void setThprPrice(String thprPrice) {
		this.thprPrice = thprPrice;
	}
	public String getThprWeekendNy() {
		return thprWeekendNy;
	}
	public void setThprWeekendNy(String thprWeekendNy) {
		this.thprWeekendNy = thprWeekendNy;
	}
	public String getThprMorningNy() {
		return thprMorningNy;
	}
	public void setThprMorningNy(String thprMorningNy) {
		this.thprMorningNy = thprMorningNy;
	}
	public String getThprTeenagerNy() {
		return thprTeenagerNy;
	}
	public void setThprTeenagerNy(String thprTeenagerNy) {
		this.thprTeenagerNy = thprTeenagerNy;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
