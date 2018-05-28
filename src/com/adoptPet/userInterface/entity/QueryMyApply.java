package com.adoptPet.userInterface.entity;

public class QueryMyApply {

	private String serialno;
	private AdoptinfoEx adopt;
	private ApplyInfoEx apply;
	private UserEx user;
	
	
	public String getSerialno() {
		return serialno;
	}
	public void setSerialno(String serialno) {
		this.serialno = serialno;
	}
	public AdoptinfoEx getAdopt() {
		return adopt;
	}
	public void setAdopt(AdoptinfoEx adopt) {
		this.adopt = adopt;
	}
	public ApplyInfoEx getApply() {
		return apply;
	}
	public void setApply(ApplyInfoEx apply) {
		this.apply = apply;
	}
	public UserEx getUser() {
		return user;
	}
	public void setUser(UserEx user) {
		this.user = user;
	}
	
	
}
