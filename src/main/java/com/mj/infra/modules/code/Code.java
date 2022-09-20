package com.mj.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {

	private String cgSeq;
	private String cgName;
	
	private String cdSeq;
	private String cdName;
	private String cdUseNy;
	private String cdDelNy;
	
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();
	
	
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
	public String getCdSeq() {
		return cdSeq;
	}
	public void setCdSeq(String cdSeq) {
		this.cdSeq = cdSeq;
	}
	public String getCdName() {
		return cdName;
	}
	public void setCdName(String cdName) {
		this.cdName = cdName;
	}
	public String getCdUseNy() {
		return cdUseNy;
	}
	public void setCdUseNy(String cdUseNy) {
		this.cdUseNy = cdUseNy;
	}
	public String getCdDelNy() {
		return cdDelNy;
	}
	public void setCdDelNy(String cdDelNy) {
		this.cdDelNy = cdDelNy;
	}
	
	
}
