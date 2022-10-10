package com.mj.infra.common.base;

import org.springframework.web.multipart.MultipartFile;

public class Base {

	private String seq;
	private String type;
	private String defaultNy;
	private String sort;
	private String originalName;
	private String uuIdName;
	private String ext;
	private String size;
	private String delNy;
	private String pseq;
	private String regId;
	private String regSeq;
	private String regDeviceCd;
	private String regDateTime;
	private String regDateTimeSvr;
	private String upPath;
	
	private MultipartFile[] MultipartFile;
	
	public String getUpPath() {
		return upPath;
	}

	public void setUpPath(String upPath) {
		this.upPath = upPath;
	}


	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDefaultNy() {
		return defaultNy;
	}

	public void setDefaultNy(String defaultNy) {
		this.defaultNy = defaultNy;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getUuIdName() {
		return uuIdName;
	}

	public void setUuIdName(String uuIdName) {
		this.uuIdName = uuIdName;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getDelNy() {
		return delNy;
	}

	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}

	public String getPseq() {
		return pseq;
	}

	public void setPseq(String pseq) {
		this.pseq = pseq;
	}

	public String getRegId() {
		return regId;
	}

	public void setRegId(String regId) {
		this.regId = regId;
	}

	public String getRegSeq() {
		return regSeq;
	}

	public void setRegSeq(String regSeq) {
		this.regSeq = regSeq;
	}

	public String getRegDeviceCd() {
		return regDeviceCd;
	}

	public void setRegDeviceCd(String regDeviceCd) {
		this.regDeviceCd = regDeviceCd;
	}

	public String getRegDateTime() {
		return regDateTime;
	}

	public void setRegDateTime(String regDateTime) {
		this.regDateTime = regDateTime;
	}

	public String getRegDateTimeSvr() {
		return regDateTimeSvr;
	}

	public void setRegDateTimeSvr(String regDateTimeSvr) {
		this.regDateTimeSvr = regDateTimeSvr;
	}

	public MultipartFile[] getMultipartFile() {
		return MultipartFile;
	}

	public void setMultipartFile(MultipartFile[] multipartFile) {
		MultipartFile = multipartFile;
	}
	
}
