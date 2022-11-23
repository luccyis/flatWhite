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
	private Integer tdbkDelNy;
	
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
	
	
	//카카오페이
	public String cid;
	public String tid;
	public String partner_order_id;
	public String partner_user_id;
	public String pg_token;
	
	public String aid;
	public String next_redirect_pc_url;
	public String created_at;
	public String item_name;
	public String item_code;
	public String approval_url;
	public Integer quantity;
	public String cancel_url;
	public String fail_url;
	public String approved_at;
	public String android_app_scheme;
	public String ios_app_scheme;
	
	public String[] amount;
	public String[] card_info;
	public Integer total;
	public Integer tax_free;
	public Integer vat;
	public Integer point;
	public Integer discount;
	public Integer green_deposit;
	
	public String purchase_corp;
	public String purchase_corp_code;
	public String issuer_corp;
	public String issuer_corp_code;
	public String kakaopay_purchase_corp;
	public String kakaopay_purchase_corp_code;
	public String kakaopay_issuer_corp;
	public String bin;
	public String card_type;
	public String install_month;
	public String approved_id;
	public String card_mid;
	
	
	public Object header;
	public String resultCode;
	public String resultMsg;
	public Object[] items;
	public Object body;
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
	public Integer getTdbkDelNy() {
		return tdbkDelNy;
	}
	public void setTdbkDelNy(Integer tdbkDelNy) {
		this.tdbkDelNy = tdbkDelNy;
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
	public String getTdmvState() {
		return tdmvState;
	}
	public void setTdmvState(String tdmvState) {
		this.tdmvState = tdmvState;
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
	public String getIfmmPhone() {
		return ifmmPhone;
	}
	public void setIfmmPhone(String ifmmPhone) {
		this.ifmmPhone = ifmmPhone;
	}
	public String getBkDate() {
		return bkDate;
	}
	public void setBkDate(String bkDate) {
		this.bkDate = bkDate;
	}
	public Integer getBkSum() {
		return bkSum;
	}
	public void setBkSum(Integer bkSum) {
		this.bkSum = bkSum;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public String getPg_token() {
		return pg_token;
	}
	public void setPg_token(String pg_token) {
		this.pg_token = pg_token;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getNext_redirect_pc_url() {
		return next_redirect_pc_url;
	}
	public void setNext_redirect_pc_url(String next_redirect_pc_url) {
		this.next_redirect_pc_url = next_redirect_pc_url;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public String getApproval_url() {
		return approval_url;
	}
	public void setApproval_url(String approval_url) {
		this.approval_url = approval_url;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public String getCancel_url() {
		return cancel_url;
	}
	public void setCancel_url(String cancel_url) {
		this.cancel_url = cancel_url;
	}
	public String getFail_url() {
		return fail_url;
	}
	public void setFail_url(String fail_url) {
		this.fail_url = fail_url;
	}
	public String getApproved_at() {
		return approved_at;
	}
	public void setApproved_at(String approved_at) {
		this.approved_at = approved_at;
	}
	public String getAndroid_app_scheme() {
		return android_app_scheme;
	}
	public void setAndroid_app_scheme(String android_app_scheme) {
		this.android_app_scheme = android_app_scheme;
	}
	public String getIos_app_scheme() {
		return ios_app_scheme;
	}
	public void setIos_app_scheme(String ios_app_scheme) {
		this.ios_app_scheme = ios_app_scheme;
	}
	public String[] getAmount() {
		return amount;
	}
	public void setAmount(String[] amount) {
		this.amount = amount;
	}
	public String[] getCard_info() {
		return card_info;
	}
	public void setCard_info(String[] card_info) {
		this.card_info = card_info;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getTax_free() {
		return tax_free;
	}
	public void setTax_free(Integer tax_free) {
		this.tax_free = tax_free;
	}
	public Integer getVat() {
		return vat;
	}
	public void setVat(Integer vat) {
		this.vat = vat;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public Integer getGreen_deposit() {
		return green_deposit;
	}
	public void setGreen_deposit(Integer green_deposit) {
		this.green_deposit = green_deposit;
	}
	public String getPurchase_corp() {
		return purchase_corp;
	}
	public void setPurchase_corp(String purchase_corp) {
		this.purchase_corp = purchase_corp;
	}
	public String getPurchase_corp_code() {
		return purchase_corp_code;
	}
	public void setPurchase_corp_code(String purchase_corp_code) {
		this.purchase_corp_code = purchase_corp_code;
	}
	public String getIssuer_corp() {
		return issuer_corp;
	}
	public void setIssuer_corp(String issuer_corp) {
		this.issuer_corp = issuer_corp;
	}
	public String getIssuer_corp_code() {
		return issuer_corp_code;
	}
	public void setIssuer_corp_code(String issuer_corp_code) {
		this.issuer_corp_code = issuer_corp_code;
	}
	public String getKakaopay_purchase_corp() {
		return kakaopay_purchase_corp;
	}
	public void setKakaopay_purchase_corp(String kakaopay_purchase_corp) {
		this.kakaopay_purchase_corp = kakaopay_purchase_corp;
	}
	public String getKakaopay_purchase_corp_code() {
		return kakaopay_purchase_corp_code;
	}
	public void setKakaopay_purchase_corp_code(String kakaopay_purchase_corp_code) {
		this.kakaopay_purchase_corp_code = kakaopay_purchase_corp_code;
	}
	public String getKakaopay_issuer_corp() {
		return kakaopay_issuer_corp;
	}
	public void setKakaopay_issuer_corp(String kakaopay_issuer_corp) {
		this.kakaopay_issuer_corp = kakaopay_issuer_corp;
	}
	public String getBin() {
		return bin;
	}
	public void setBin(String bin) {
		this.bin = bin;
	}
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public String getInstall_month() {
		return install_month;
	}
	public void setInstall_month(String install_month) {
		this.install_month = install_month;
	}
	public String getApproved_id() {
		return approved_id;
	}
	public void setApproved_id(String approved_id) {
		this.approved_id = approved_id;
	}
	public String getCard_mid() {
		return card_mid;
	}
	public void setCard_mid(String card_mid) {
		this.card_mid = card_mid;
	}
	public Object getHeader() {
		return header;
	}
	public void setHeader(Object header) {
		this.header = header;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public Object[] getItems() {
		return items;
	}
	public void setItems(Object[] items) {
		this.items = items;
	}
	public Object getBody() {
		return body;
	}
	public void setBody(Object body) {
		this.body = body;
	}
	
	
	
	

}
