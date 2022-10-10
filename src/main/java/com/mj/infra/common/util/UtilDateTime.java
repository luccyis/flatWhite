package com.mj.infra.common.util;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class UtilDateTime {

	public static String add00TimeString(String shDateStart) {
		/* String start = ""; */
		return shDateStart ;
	}

	public static String add59TimeString(String shDateEnd) {
		/* String end = ""; */
		return shDateEnd;
	}
	
	public static String nowString () throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
		return localDateTimeString;
	}
}
