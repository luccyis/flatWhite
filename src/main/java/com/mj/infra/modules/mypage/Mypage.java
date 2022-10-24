package com.mj.infra.modules.mypage;

import com.mj.infra.common.base.Base;

public class Mypage extends Base {

	//멤버
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private String ifmmName;
	private String ifmmGender;
	private String ifmmGrade;
	private String ifmmEmailAddress;
	private String ifmmEmailDomain;
	private String ifmmPhone;
	private String ifmmDob;
	private String ifmmEmailNy;
	private String ifmmSmsNy;
	private String ifmmDobLoginNy;
	private String ifmmSnsLogin;
	private String ifmmDelNy;
	private String ifmmUseNy;
	
	//결제
	private String tdbkSeq;
	private String tdbkPayment;
	private String tdbkBookingDate;
	private String tdttSeq;
	private String tdbkTotalCost;
	
	//결제 - 좌석
	private String tdbsSeq;
	private String tdbsSeatNum;
	private String tdbsTeenagerNy;
	private String thprSeq;
	
	//타임테이블, 영화 정보
	private String tdttShowTime;
	private String tdmvSeq;
	private String tdmvMovieTitle;
	
	//선호극장 tradFavoriteTheater
	private String tdftSeq;
	private String tdftSort;
	private String tdthBranch;
	private String tdpxPlexName;
	private String[] aaa;
	
	
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmGender() {
		return ifmmGender;
	}
	public void setIfmmGender(String ifmmGender) {
		this.ifmmGender = ifmmGender;
	}
	public String getIfmmGrade() {
		return ifmmGrade;
	}
	public void setIfmmGrade(String ifmmGrade) {
		this.ifmmGrade = ifmmGrade;
	}
	public String getIfmmEmailAddress() {
		return ifmmEmailAddress;
	}
	public void setIfmmEmailAddress(String ifmmEmailAddress) {
		this.ifmmEmailAddress = ifmmEmailAddress;
	}
	public String getIfmmEmailDomain() {
		return ifmmEmailDomain;
	}
	public void setIfmmEmailDomain(String ifmmEmailDomain) {
		this.ifmmEmailDomain = ifmmEmailDomain;
	}
	public String getIfmmPhone() {
		return ifmmPhone;
	}
	public void setIfmmPhone(String ifmmPhone) {
		this.ifmmPhone = ifmmPhone;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getIfmmEmailNy() {
		return ifmmEmailNy;
	}
	public void setIfmmEmailNy(String ifmmEmailNy) {
		this.ifmmEmailNy = ifmmEmailNy;
	}
	public String getIfmmSmsNy() {
		return ifmmSmsNy;
	}
	public void setIfmmSmsNy(String ifmmSmsNy) {
		this.ifmmSmsNy = ifmmSmsNy;
	}
	public String getIfmmDobLoginNy() {
		return ifmmDobLoginNy;
	}
	public void setIfmmDobLoginNy(String ifmmDobLoginNy) {
		this.ifmmDobLoginNy = ifmmDobLoginNy;
	}
	public String getIfmmSnsLogin() {
		return ifmmSnsLogin;
	}
	public void setIfmmSnsLogin(String ifmmSnsLogin) {
		this.ifmmSnsLogin = ifmmSnsLogin;
	}
	public String getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(String ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmmUseNy() {
		return ifmmUseNy;
	}
	public void setIfmmUseNy(String ifmmUseNy) {
		this.ifmmUseNy = ifmmUseNy;
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
	public String getTdbsSeq() {
		return tdbsSeq;
	}
	public void setTdbsSeq(String tdbsSeq) {
		this.tdbsSeq = tdbsSeq;
	}
	public String getTdbsSeatNum() {
		return tdbsSeatNum;
	}
	public void setTdbsSeatNum(String tdbsSeatNum) {
		this.tdbsSeatNum = tdbsSeatNum;
	}
	public String getTdbsTeenagerNy() {
		return tdbsTeenagerNy;
	}
	public void setTdbsTeenagerNy(String tdbsTeenagerNy) {
		this.tdbsTeenagerNy = tdbsTeenagerNy;
	}
	public String getThprSeq() {
		return thprSeq;
	}
	public void setThprSeq(String thprSeq) {
		this.thprSeq = thprSeq;
	}
	public String getTdttShowTime() {
		return tdttShowTime;
	}
	public void setTdttShowTime(String tdttShowTime) {
		this.tdttShowTime = tdttShowTime;
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
	public String getTdftSeq() {
		return tdftSeq;
	}
	public void setTdftSeq(String tdftSeq) {
		this.tdftSeq = tdftSeq;
	}
	public String getTdftSort() {
		return tdftSort;
	}
	public void setTdftSort(String tdftSort) {
		this.tdftSort = tdftSort;
	}
	public String getTdthBranch() {
		return tdthBranch;
	}
	public void setTdthBranch(String tdthBranch) {
		this.tdthBranch = tdthBranch;
	}
	public String getTdpxPlexName() {
		return tdpxPlexName;
	}
	public void setTdpxPlexName(String tdpxPlexName) {
		this.tdpxPlexName = tdpxPlexName;
	}
	
	

	
}
