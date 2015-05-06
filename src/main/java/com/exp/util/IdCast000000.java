package com.exp.util;

import java.text.DecimalFormat;

public class IdCast000000 {
	public static String cast(Integer param){
		DecimalFormat countFormat = new DecimalFormat("000000");
		return countFormat.format(param);
	}
}
