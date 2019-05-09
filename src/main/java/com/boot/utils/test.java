package com.boot.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;


public class test {

	public static void main(String[] args) throws Exception {
		Map reqMap = new HashMap();
		reqMap.put("order_trade_no","T20180426125023924252471");
		reqMap.put("refund_trade_no", "T20180426125023924252471");
		reqMap.put("order_total", "4650");
		reqMap.put("refund_total","4000");
		try {
			reqMap = PayUtil.refund(reqMap);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		
	}
	
}
