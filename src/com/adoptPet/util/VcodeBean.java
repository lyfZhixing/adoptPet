package com.adoptPet.util;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


//@AllArgsConstructor
public class VcodeBean {

	@Getter @Setter private String vcode;
	@Getter @Setter private long expiredDate;
	public VcodeBean(String vcode, long expiredDate) {
		super();
		this.vcode = vcode;
		this.expiredDate = expiredDate;
	}
	
}
